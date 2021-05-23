--[[ 
StorageManager
Link between game and storage.
Fetched when a player join and updated with each changes

SharedStorage format:
	Gear: hash of (str slot -> int storageId)

--]]

local sharedStorage = script:GetCustomProperty("SharedStorage")
local equipmentLibrary = script:GetCustomProperty("EquipmentLibrary"):WaitForObject().context
local playersStorage = {}

function OnPlayerJoined(player)
	local data = Storage.GetSharedPlayerData(sharedStorage, player)
	playersStorage[player.id] = data
	
	-- load equipment
	if not data["Gear"] then data["Gear"] = {} end
	for slot, storageId in pairs(data["Gear"]) do
		local equipmentData = equipmentLibrary.GetEquipmentByStorageId(storageId)
		player.serverUserData.Manager.ChangeEquipment(equipmentData, slot)
	end
end

-- nil ChangeEquipment(Player, EquipmentData.context, string)
function ChangeEquipment(player, equipmentData, slot)
	local data = playersStorage[player.id]
	data["Gear"][slot] = equipmentData and equipmentData.GetStorageId() or nil
	Storage.SetSharedPlayerData(sharedStorage, player, data)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
