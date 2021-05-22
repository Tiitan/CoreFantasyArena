--[[
AbilityClient
child of an Ability in client context.
listen to Ability to spawn Fx.
register to skillbar if attached to local player
--]]

local skillBarClient = script:GetCustomProperty("SkillBarClient"):WaitForObject()
local parentAbility = script:FindAncestorByType("Ability")
local skillSlot = parentAbility:GetCustomProperty("SkillSlot")

function OnCast(ability)
	
end

function OnExecute(ability)
	
end

parentAbility.castEvent:Connect(OnCast)
parentAbility.executeEvent:Connect(OnExecute)

Task.Wait(0) -- wait next frame for ability owner init
if parentAbility.owner == Game.GetLocalPlayer()then
	skillBarClient.context.RegisterSkill(skillSlot, parentAbility)
end
