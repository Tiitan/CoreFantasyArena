--[[
	CharacterManager
	instanced server side for each player and NPC.
	calculate life and energy changes.
]]--

local CharacterWrapperFactory = require(script:GetCustomProperty("CharacterWrapperFactory"))

-- Character managed by this script: PlayerWrapper or NpcWrapper.
local character = nil

-- List all registered damage and heal over time.
local damageSources = {}
local energySources = {}

-- Continuous and energy values
local damageOverTime = 0
local energyOverTime = 0

-- Task appliying the damage (or energy) each 0.5s.
local dotTask = nil
local eotTask = nil

-- time reference used to apply damage or energy.
local LastDotTick = nil
local LastEotTick = nil

-- player initial energy regen, never changes after Init().
local baseEnergyRegen = 2

local attached_equipments = {}

local targetCharacter = nil

-- int GetDamageOverTime()
function GetDamageOverTime()
	return script:GetCustomProperty("DamageOverTime")
end

-- nil SetDamageOverTime(int)
function SetDamageOverTime(value)
	script:SetNetworkedCustomProperty("DamageOverTime", value)
end

-- float GetEnergy()
-- Not using player.ressource[] because this is a float.
function GetEnergy()
	return script:GetCustomProperty("Energy")
end

-- nil SetEnergy(float)
function SetEnergy(value)
	script:SetNetworkedCustomProperty("Energy", value)
	
	-- Restart energy task after use if needed
	if eotTask == nil then
		eotTask = Task.Spawn(ApplyEot, 0.5)
		eotTask.repeatCount = -1
		LastEotTick = time()
	end
end

-- float GetMaxEnergy()
function GetMaxEnergy()
	return script:GetCustomProperty("MaxEnergy")
end

-- nil SetMaxEnergy(float)
function SetMaxEnergy(value)
	script:SetNetworkedCustomProperty("MaxEnergy", value)
end

-- int GetEnergyOverTime()
function GetEnergyOverTime()
	return script:GetCustomProperty("EnergyOverTime")
end

-- nil SetEnergyOverTime(int)
function SetEnergyOverTime(value)
	script:SetNetworkedCustomProperty("EnergyOverTime", value)
end

-- NpcWrapper or PlayerWrapper GetMaxEnergy()
function GetTarget()
	return targetCharacter
end

-- nil Init(Player|Script[Npc])
-- called from StaticPlayerAttach, after instanciation when a new player join.
function Init(attachedCharacter)
	character = CharacterWrapperFactory.GetWrapper(attachedCharacter)
	character:SetManager(script.context)
	baseEnergyRegen = GetEnergyOverTime()
	
	if attachedCharacter:IsA("Player") then
		script:SetNetworkedCustomProperty("playerId", attachedCharacter.id)
	end
end

-- nil RegisterDamageSource(string, float)
function RegisterDamageSource(sourceId, value)
	damageSources[sourceId] = value
	OnDamageOverTimeUpdated()
end

-- nil UnRegisterDamageSource(string)
function UnRegisterDamageSource(sourceId)
	damageSources[sourceId] = nil
	OnDamageOverTimeUpdated()
end

-- nil RegisterEnergySource(string, float)
function RegisterEnergySource(sourceId, value)
	damageSources[sourceId] = value
	OnEnergyOverTimeUpdated()
end

-- nil UnRegisterEnergySource(string)
function UnRegisterEnergySource(sourceId)
	energySources[sourceId] = nil
	OnEnergyOverTimeUpdated()
end

-- nil OnDamageOverTimeUpdated()
-- Called each time the damage over time changes.
-- Apply damage change for the elapsed time and restart (or cancel) the ApplyDot task when needed.
function OnDamageOverTimeUpdated()
	local newDamage = 0
	for id, value in pairs(damageSources) do
		newDamage = newDamage + value
	end
	if newDamage ~= GetDamageOverTime() then
		if GetDamageOverTime() ~= 0 then
			ApplyDot()
		end
		SetDamageOverTime(newDamage) 
		if GetDamageOverTime() == 0 and dotTask ~= nil then
			dotTask:Cancel()
			dotTask = nil
		elseif GetDamageOverTime() ~= 0 and dotTask == nil then
			LastDotTick = time()
			dotTask = Task.Spawn(ApplyDot, 0.5)
			dotTask.repeatCount = -1 --infinte repeat until cancel
		end
	end
end

-- nil ApplyDot()
-- Run everytime the damage over time value change from OnDamageOverTimeUpdated.
-- Also Run from a task every 0.5s while a dot is active.
function ApplyDot()
	local currentTime = time()
	local duration = currentTime - LastDotTick
	if GetDamageOverTime() > 0 or character:GettHitPoints() < character:GetMaxHitPoints() then
		character:ApplyDamage(Damage.New(GetDamageOverTime() * duration))
	end
	LastDotTick = currentTime
	
	if dotTask then
		dotTask.repeatInterval = 0.5 -- Repeat interval need to be set each call or it revert to 0.
	end
end

-- nil OnDamageOverTimeUpdated()
-- called each time the damage over time changes
-- Apply energy change for the elapsed time and restart (or cancel) the ApplyEot task when needed.
function OnEnergyOverTimeUpdated()
	local newEnergy = baseEnergyRegen
	for id, value in pairs(energySources) do
		newEnergy = newEnergy + value
	end
	if newEnergy ~= GetEnergyOverTime() then
		if GetEnergyOverTime() ~= 0 then
			ApplyEot()
		end
		SetEnergyOverTime(newDamage) 
		if GetEnergyOverTime() == 0 and eotTask ~= nil then
			eotTask:Cancel()
			eotTask = nil
		elseif GetEnergyOverTime() ~= 0 and eotTask == nil then
			LastEotTick = time()
			eotTask = Task.Spawn(ApplyEot, 0.5)
			eotTask.repeatCount = -1 -- infinte repeat until cancel
		end
	end
end

-- nil ApplyEot()
-- Run everytime the energy over time value change from OnEnergyOverTimeUpdated.
-- Also Run from a task every 0.5s while a dot is active.
function ApplyEot()
	local currentTime = time()
	local duration = currentTime - LastEotTick
	
	local energy = GetEnergy()
	local maxEnergy = GetMaxEnergy()

	local newEnergyValue = GetEnergy() + GetEnergyOverTime() * duration
	newEnergyValue = CoreMath.Clamp(newEnergyValue, 0, maxEnergy)
	SetEnergy(newEnergyValue)
	
	-- full energy ?
	if newEnergyValue == maxEnergy and eotTask then
		eotTask:Cancel()
		eotTask = nil
	end
	--print("ApplyEot: " .. tostring(GetEnergy()))

	LastEotTick = currentTime
	
	if eotTask then
		eotTask.repeatInterval = 0.5 -- Repeat interval need to be set each call or it revert to 0.
	end
end

-- nil  ChangeEquipment(CoreObject, string)
-- called by PlayersListener when receiving client request (from Ui)
-- dettach and destroy previous equipment, spawn and attach new
function ChangeEquipment(equipmentData, slot)
	if attached_equipments[slot] then
		character:Unequip(attached_equipments[slot])
		attached_equipments[slot]:Destroy()
		attached_equipments[slot] = nil
	end
	
	if equipmentData then
		attached_equipments[slot] = World.SpawnAsset(equipmentData.GetEquipmentTemplate())
		attached_equipments[slot]:SetNetworkedCustomProperty("AttachedManager", script)
		-- TODO weapon switch indirection
		character:Equip(attached_equipments[slot])
	end
end

-- nil OnTargetChanged(player or coreobject [Npc script])
-- direct call from PlayersListener
function OnTargetChanged(newTarget)
	targetCharacter = newTarget and CharacterWrapperFactory.GetWrapper(newTarget)
end

-- force spawn the task at the end of init because energy has regen by default
eotTask = Task.Spawn(ApplyEot, 0.5)
eotTask.repeatCount = -1
LastEotTick = time()

-- Npc Auto-initialisation, Player initialisation is done from StaticPlayerAttach's OnPlayerJoin event
if script.parent and script.parent:FindChildByName("Npc") then
	Init(script.parent:FindChildByName("Npc"))
end