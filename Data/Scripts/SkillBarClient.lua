--[[
SkillBarClient.
Link an ability to its assigned skillSlot when an Item is equiped.
Attached to the skillbar folder beside all skillslot templates.
Called with direct cutomproperty reference by all Abilities.
--]]

local childList = script.parent:GetChildren()

local skillSlots = {}
for _, child in pairs(childList) do
	if child.type ~= "Script" then -- skip this script
		slotId = child:GetCustomProperty("SlotId")
		skillSlots[slotId] = child:FindChildByType("Script").context
	end
end

-- nil RegisterSkill(int, Ability)
-- Called by AbilityClient on Init
-- int slotId: 1 to 8
-- Ability: Ability object with an Icon custom property
function RegisterSkill(slotId, ability)
	skillSlots[slotId].RegisterSkill(ability)
	return skillSlots[slotId]
end
