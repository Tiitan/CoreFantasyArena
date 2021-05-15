--[[
ProjectileAbility
child of an Ability in server context
spawn a projectile on execute if the target is visible and in range
--]]

local parentAbility = script:FindAncestorByType("Ability")
local parentEquipment = parentAbility:FindAncestorByType("Equipment")
local projectileTemplate = script:GetCustomProperty("ProjectileTemplate")
local range = parentAbility:GetCustomProperty("Range")
local energyCost = parentAbility:GetCustomProperty("EnergyCost")
local characterManager = nil	
local castTarget = nil --NpcWrapper or PlayerWrapper

function OnCast(ability)
	
	if not characterManager then
		print("ability " .. script.name .. " characterManager not loaded")
		ability:Interrupt()
		return
	end

	-- Check target
	local target = characterManager.GetTarget()
	--print(tostring(target))
	if not target then
		print("ability " .. script.name .. " missing target")
		ability:Interrupt()
		return
	end
	
	-- use energy
	local energy = characterManager.GetEnergy()
	if energy < energyCost then
		print("ability " .. script.name .. " not enough energy")
		ability:Interrupt()
		return
	end
	
	castTarget = target
	characterManager.SetEnergy(energy - energyCost)
end

function OnExecute(ability)
	--print("projectile ability on " .. tostring(castTarget))
	if not castTarget then return end
	-- TODO: Check LOS & distance
	projectile = World.SpawnAsset(projectileTemplate, {position = parentEquipment:GetWorldPosition()})
	projectileScript = projectile:FindChildByName("Projectile")
	projectileScript.context.Init(castTarget)
end

parentAbility.castEvent:Connect(OnCast)
parentAbility.executeEvent:Connect(OnExecute)

-- late init character manager to wait network initialization
Task.Wait()
characterManager = parentEquipment:GetCustomProperty("AttachedManager"):GetObject()
characterManager = characterManager and characterManager.context

