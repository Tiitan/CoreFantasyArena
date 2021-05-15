assetsTemplates = script:GetCustomProperties()

local assets = {}

function OnPlayerJoined(player)
	local player_assets = {}
	for name, value in pairs(assetsTemplates) do
		player_assets[name] = World.SpawnAsset(value)
		player_assets[name]:AttachToPlayer(player, "root")

		-- init server script (optional) TODO: event ?
		local propertyManagerServer = player_assets[name]:GetCustomProperty("ManagerServer")
		if propertyManagerServer then
			serverScript = propertyManagerServer:WaitForObject()
			serverScript.context.Init(player)
		end
	end
	assets[player] = player_assets
end

function OnPlayerLeft(player)
	local player_assets = assets[player]
	for name, value in pairs(player_assets) do
		value:Detach()
		value:Destroy()
	end
	assets[player] = nil
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)