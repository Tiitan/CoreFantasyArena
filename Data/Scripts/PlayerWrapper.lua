--[[
PlayerWrapper class
Encapsulate a Player so NPC and Player can share the same script implementations:
	- health and damage
	- attach equipment and abilities
Instanciated from CharacterWrapperFactory
--]]

local class = {}
class.__index = class

function class.New(player)
	local object = {player = player}
	setmetatable(object, class)
	return object
end

function class:ApplyDamage(damage)
	self.player:ApplyDamage(damage)
end

function class:GetHitPoints()
	return self.player.hitPoints
end

function class:GetMaxHitPoints()
	return self.player.maxHitPoints
end

function class:GetName()
	return self.player.name
end

function class:GetWorldPosition()
	return self.player:GetWorldPosition()
end

function class:GetId()
	return self.player.id
end

function class:GetReference()
	return self.player
end

function class:IsPlayer()
	return true
end

function class:IsDead()
	return self.player.isDead
end

-- nil Equip(equipment)
-- Server only
function class:Equip(equipment)
	equipment:Equip(self.player)
end

-- nil Die()
-- Server only
function class:Die()
	self.player.Die()
end

-- nil Unequip(equipment)
-- Server only
function class:Unequip(equipment)
	equipment:Unequip(self.player)
end

-- serverUserData.Manager is used to reference the CharacterManager,
-- set by the CharacterManager.init
-- Server only
function class:SetManager(manager)
	self.player.serverUserData.Manager = manager
end

return class