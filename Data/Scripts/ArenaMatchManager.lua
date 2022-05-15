--[[
ArenaMatchManager
wait for players to join, assign team, 
start the match and determine when it is over.
--]]

local lobbyDuration = script:GetCustomProperty("LobbyDuration") -- max wait time for players to join between matches (30s)
local startingDuration = script:GetCustomProperty("StartingDuration") -- time before game start when ready (8s)
local gameOverDuration = script:GetCustomProperty("GameOverDuration") -- time before restart when gameover (8s)



local PHASE_LOBBY = 0
local PHASE_STARTING = 0
local PHASE_PLAYING = 1
local PHASE_GAMEOVER = 2

local TEAM_OBS = 1
local TEAM_BLUE = 2
local TEAM_RED = 3

local phase = PHASE_LOBBY -- game state: Lobby, Starting, Playing, Gameover.
local startingGameTask = nil --startgame canceled if a player leave during countdown
local waitingPlayers = {} -- players that joined during a match, assigned to a team on game restart

-- nil OnPlayerJoined(player)
function OnPlayerJoined(player)
	player.diedEvent:Connect(OnPlayerDied)
	if phase == PHASE_LOBBY then
		local red_team = Game.GetPlayers({includeTeams = TEAM_RED})
		local blue_team = Game.GetPlayers({includeTeams = TEAM_BLUE})
		player.team = #red_team > #blue_team and TEAM_RED or TEAM_BLUE
		if #red_team + #blue_team + 1 == 8 then
			startingGameTask = Task.Spawn(StartRound)
		end
	else
		Table.insert(waitingPlayers, player)
	end
end

-- nil OnPlayerLeft(player)
function OnPlayerLeft(player)
	-- Check gameover while playing
	if phase == PHASE_PLAYING then
		EndRoundCheck(player)
		
	-- Cancel game start if a player leaves during start countdown
	elseif phase == PHASE_STARTING and startingGameTask then
		startingGameTask.Cancel()
		startingGameTask = nil
		-- TODO: cancel starting event
		phase = PHASE_LOBBY
	end
end

-- nil OnPlayerDied(player)
function OnPlayerDied(player)
	if phase == PHASE_PLAYING then
		EndRoundCheck(player)
	end
end

-- nil EndRoundCheck(player)
-- Called when a player die or leave during a round to check for endround transition
function EndRoundCheck(player)
	local alive_teammate = Game.GetPlayers({includeTeams = player.team, ignoreDead = true})
	if #alive_teammate == 0 then
		EndRound()
	end
end 

-- nil StartRound()
-- task starting a round, can be canceled if a player leave during countdown
function StartRound()
	phase = PHASE_STARTING
	-- TODO: starting event
	startingGameTask = Task.Wait(startingDuration)
	
	-- start round
	Game.StartRound() 
	phase = PHASE_PLAYING
end

-- nil EndRound()
-- end the current round then restore to lobby
function EndRound()
	phase = PHASE_GAMEOVER
	-- TODO: gameover event
	Task.Wait(gameOverDuration)
	
	-- reset to lobby
	Game.EndRound() 
	Game.ResetTeamScores()
	phase = PHASE_LOBBY
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)