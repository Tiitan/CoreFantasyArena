--[[
Npc: Non playable Character
networked script.
Equivalent to a Player, but not playable :)
/!\ Should be called "Npc" in hierarchy: 
- FindChildByName("Npc") used in CharacterManager and CharacterManagerListenerClient
- used though NpcWrapper, by both CLient and Server
]]--

local root = script.parent
local hitPoints = script:GetCustomProperty("HitPoints")

function IsDead()
	return hitPoints <= 0
end

-- nil Die()
function Die()
	assert(Environment.IsServer(), "Npc Die called from a client context")
	--TODO Die FX, ragdoll, etc
	root:Destroy()
end

-- nil ApplyDamage(Damage)
-- Mirror Player's ApplyDamage behavior.
function ApplyDamage(damage)
	assert(Environment.IsServer(), "Npc ApplyDamage called from a client context")
	if IsDead() then return end
	
	hitPoints = hitPoints - damage.amount
	
	print("NPC damaged. HP=" .. hitPoints)
	script:SetNetworkedCustomProperty("HitPoints", hitPoints)
	
	if IsDead() then
		hitPoints = 0
		Die()
		return
	end
end

function Equip(equipment)
	-- TODO attach to animated mesh
	-- TODO update skillset ?
end

function Unequip(equipment)
	-- TODO
end