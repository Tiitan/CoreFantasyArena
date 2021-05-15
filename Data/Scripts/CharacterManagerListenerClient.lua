local characterManager = script:GetCustomProperty("CharacterManager"):WaitForObject()
local character = script:GetCustomProperty("Npc"):GetObject()
local playerId = characterManager:GetCustomProperty("playerId")

function GetPlayer(playerId)
	local players = Game.GetPlayers()
	for _, player in pairs(players) do
		if player.id == playerId then
			return player
		end
	end
end

if not character then
	-- new player register old player
	character = playerid and GetPlayer(playerid)
end

-- Update Energy, MaxEnergy, DamageOverTime, EnergyOverTime
function OnNetworkedPropertyChanged(coreObject, propertyName)
	if not character then
		-- old player register new player
		playerId = characterManager:GetCustomProperty("playerId")
		character = playerId and GetPlayer(playerId)
		return
	end

	if not character then 
		warn("CharacterManagerListenerClient: undefined character!")
		return 
	end

	--print(character.id .. " " .. propertyName .. " " ..characterManager:GetCustomProperty(propertyName))
	local propertyValue = coreObject:GetCustomProperty(propertyName)
	Events.Broadcast(character.id .. "On" .. propertyName .. "Update", propertyValue)
end

characterManager.networkedPropertyChangedEvent:Connect(OnNetworkedPropertyChanged)