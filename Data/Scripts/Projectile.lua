--[[
Projectile
server projectile class
spawned by projectile ability.
calculate travel time
apply impact effect
--]]


local damage = script:GetCustomProperty("damage")
local velocity = script:GetCustomProperty("velocity")
local root = script.parent

local startPosition = root:GetWorldPosition()
local initialTime = time()
local arrivalTime = -1

local impactTask = nil

local target = nil

-- nil Init(NpcWrapper or PlayerWrapper)
-- compute an unavoidable projectile's target and arrival time at initialisation
-- register it to network for client fx
-- start impact task
function Init(newTarget)
	target = newTarget
	if target:IsPlayer() then
		script:SetNetworkedCustomProperty("TargetPlayer", target:GetId())
	else
		script:SetNetworkedCustomProperty("Target", target:GetReference())
	end

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
	if damage and target then
		target:ApplyDamage(Damage.New(damage))
	end
	print("projectile reach target")
	root:Destroy()
end
