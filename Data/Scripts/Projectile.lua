local velocity = script:GetCustomProperty("velocity")
local root = script.parent

local startPosition = root:GetWorldPosition()
local initialTime = time()
local arrivalTime = -1

local impactTask = nil

-- nil Init(NpcWrapper or PlayerWrapper)
-- compute an unavoidable projectile's target and arrival time at initialisation
-- register it to network for client fx
-- start impact task
function Init(target)
	script:SetNetworkedCustomProperty("Target", target:GetReference())
	local distance = (target:GetWorldPosition() - startPosition).size
	impactDelay = distance / velocity
	arrivalTime = initialTime + impactDelay
	script:SetNetworkedCustomProperty("ArrivalTime", arrivalTime)
	impactTask = Task.Spawn(Impact, impactDelay)
end

-- nil Impact()
-- Travel is only computed client side in ProjectileClient
-- called when the projectile reach the target
function Impact()
	print("projectile reach target")
	root:Destroy()
end
