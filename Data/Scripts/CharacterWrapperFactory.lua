--[[
CharacterWrapperFactory
Factory selecting between NpcWrapper and PlayerWrapper
Wrapper are used abstract player and npc so they can share the same implementations
used by client and server: TargetUiClient, CharacterManager
--]]

local class = {}
class.__index = class

function class.GetWrapper(object)
	if object:IsA("Player") then
		local PlayerWrapper = require(script:GetCustomProperty("PlayerWrapper"))
		return PlayerWrapper.New(object)
	elseif object:IsA("Script") then
		local NpcWrapper = require(script:GetCustomProperty("NpcWrapper"))
		return NpcWrapper.New(object)
	end
	return nil
end

return class