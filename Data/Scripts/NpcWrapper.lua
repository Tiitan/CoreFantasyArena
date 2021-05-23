--[[
NpcWrapper class
Encapsulate a Player so NPC and Player can share the same scripts implementations:
	- health and damage
	- attach equipment and abilities
Instanciated from CharacterWrapperFactory
--]]

local class = {}
class.__index = class

function class.New(npc)
	local object = {npc = npc}
	setmetatable(object, class)
	return object
end

function class:GetHitPoints()
	return self.npc:GetCustomProperty("HitPoints")
end

function class:GetMaxHitPoints()
	return self.npc:GetCustomProperty("MaxHitPoints")
end

function class:GetName()
	return self.npc:GetCustomProperty("DisplayName")
end

function class:GetWorldPosition()
	return self.npc.parent:GetWorldPosition()
end

function class:GetId()
	return self.npc.parent.id
end

function class:GetReference()
	return self.npc:GetReference()
end

function class:IsPlayer()
	return false
end

-- nil ApplyDamage(damege)
-- Server only
function class:ApplyDamage(damage)
	self.npc.context.ApplyDamage(damage)
end

-- nil Equip(equipment)
-- Server only
function class:Equip(equipment)
	self.npc.context.Equip(equipment)
end

-- nil Unequip(equipment)
-- Server only
function class:Unequip(equipment)
	self.npc.context.Unequip(equipment)
end

-- serverUserData.Manager is used to reference the CharacterManager,
-- set by the CharacterManager.init
-- server only
function class:SetManager(manager)
	self.npc.serverUserData.Manager = manager
end

return class