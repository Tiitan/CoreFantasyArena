--[[
PlayersListener
listen to player events, validate and broadcast to CharacterManager
--]]

local equipmentLibrary = script:GetCustomProperty("EquipmentLibrary"):WaitForObject().context

function ChangeEquipment(player, equipmentDataId, slot)
	--TODO disable during match
	local equipmentData = equipmentLibrary.GetEquipment(equipmentDataId)
	player.serverUserData.Manager.ChangeEquipment(equipmentData, slot)
end

-- nil OnTargetChanged(player, coreobject or player)
-- player: sender
-- newTarget: player's target. another player or an Npc script
function OnTargetChanged(player, newTarget)
	-- convert reference coreobject to actual object in case of a targeted Npc
	if newTarget and newTarget:IsA("CoreObjectReference") then
		newTarget = newTarget:GetObject()
	end

	player.serverUserData.Manager.OnTargetChanged(newTarget)
end

Events.ConnectForPlayer("ChangeEquipment", ChangeEquipment)
Events.ConnectForPlayer("OnTargetChanged", OnTargetChanged)