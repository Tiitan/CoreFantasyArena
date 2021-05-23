local propHealthBarRoot = script:GetCustomProperty("HealthBarRoot"):WaitForObject()
local propEnergyBarRoot = script:GetCustomProperty("EnergyBarRoot"):WaitForObject()
local healthBar = propHealthBarRoot:FindChildByName("ProgressBarClient")
local energyBar = propEnergyBarRoot:FindChildByName("ProgressBarClient")

local player = Game.GetLocalPlayer()

-- Used to detect health update in Tick because there is no event
local currentHitpoint = -1

-- Update health bar indicator
function OnDamageOverTimeUpdate(damageOverTime)
	healthBar.context.OnUpdateBarRegen(-damageOverTime)
end

-- Update energy bar indicator
function OnEnergyOverTimeUpdate(energyOverTime)
	energyBar.context.OnUpdateBarRegen(energyOverTime)
end

-- Update energy bar progress (ProgressBarCLient self predict between EnergyUpdate) 
function OnEnergyUpdate(energy)
	energyBar.context.ProgressUpdate(energy, nil, 0)
end

-- Update energy bar progress
function OnMaxEnergyUpdate(maxenergy)
	energyBar.context.ProgressUpdate(nil, maxenergy, 0)
end

function Tick()
	-- No event for hitpoint update because it is handled by the engine
	if currentHitpoint ~= player.hitPoints then
		currentHitpoint = player.hitPoints
		healthBar.context.ProgressUpdate(player.hitPoints, player.maxHitPoints, 0)
	end
end

--print("playerbars " .. player.name .. " " .. player.id)
Events.Connect(player.id .. "OnDamageOverTimeUpdate", OnDamageOverTimeUpdate)
Events.Connect(player.id .. "OnEnergyOverTimeUpdate", OnEnergyOverTimeUpdate)
Events.Connect(player.id .. "OnEnergyUpdate", OnEnergyUpdate)
Events.Connect(player.id .. "OnMaxEnergyUpdate", OnMaxEnergyUpdate)

-- TODO: cleanup ?
-- no event for default values at startup, task run next frame to let energyBar (child) initialize
Task.Spawn(function() 
	energyBar.context.ProgressUpdate(30, 40, 0)
	energyBar.context.OnUpdateBarRegen(2) 
end, 0)
