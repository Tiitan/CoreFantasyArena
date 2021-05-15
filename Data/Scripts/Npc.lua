--[[
Npc: Non playable Character
networked script.
Equivalent to a Player, but not playable :)
/!\ Should be called "Npc" in hierarchy: 
- FindChildByName("Npc") used in CharacterManager and CharacterManagerListenerClient
- used though NpcWrapper, by both CLient and Server
]]--

-- nil ApplyDamage(Damage)
-- Mirror Player's ApplyDamage behavior.
function ApplyDamage(damage)
	assert(Environment.IsServer(), "Npc ApplyDamage called from a client context")
	hitPoints = hitPoints - damage.amount
	if hitPoints < 0 then
		hitPoints = 0
		--TODO: die
	end
	script:SetNetworkedCustomProperty("HitPoints", hitPoints)
end

function Equip(equipment)
	-- TODO attach to animated mesh
	-- TODO update skillset ?
end

function Unequip(equipment)
	-- TODO
end