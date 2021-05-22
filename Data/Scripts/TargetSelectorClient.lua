local targetZoneRoot = script:GetCustomProperty("TargetZoneRoot"):WaitForObject()
local trigger = targetZoneRoot:FindChildByType("Trigger")
local localPlayer = Game.GetLocalPlayer()
local raycastOrigin = targetZoneRoot:FindChildByName("RayCastOrigin")

-- List of Targetables inside the target zone trigger
local targetables = {}

-- TargetableScript
local currentTarget = nil
local lockTarget = false

function OnBeginOverlap(theTrigger, object)
	if (object:IsA("Player") and object ~=localPlayer) or 
	(object:IsA("CoreObject") and object:GetCustomProperty("Targetable")) then
		table.insert(targetables, object)
	end
end

function OnEndOverlap(theTrigger, object)
	if (object:IsA("Player") and object ~=localPlayer) or 
	(object:IsA("CoreObject") and object:GetCustomProperty("Targetable")) then
	    for i, p in ipairs(targetables) do
	        if p == object then
	            table.remove(targetables, i)
	            break
	        end
	    end
    end
end

function OnBindingPressed(player, bindingPressed)
	-- TAB|W key lock target
	if (bindingPressed == "ability_extra_19" or bindingPressed == "ability_extra_39") and currentTarget then
		lockTarget = not lockTarget
		Events.Broadcast("OnTargetLockChanged", lockTarget) 
    end
end

-- CoreObject|Player SelectTarget(Rotation)
-- loop through all targetable inside the trigger and select the closest to view normal
function SelectTarget(lookRotation)
	local lookDirection = lookRotation * Vector3.FORWARD
	local raycastPosition = raycastOrigin:GetWorldPosition()	
	local bestTarget = nil
	local bestDistance = 999999999
	for _, targetable in ipairs(targetables) do
		local targetPosition = targetable:GetWorldPosition()
		local targetDirection = (targetPosition - raycastPosition):GetNormalized()
		local distanceToTarget = (targetPosition - raycastPosition).size
		local targetViewAngle = math.acos(lookDirection .. targetDirection)
		local distanceToViewNormal = distanceToTarget * math.tan(targetViewAngle)
		if distanceToViewNormal < bestDistance then
			bestDistance = distanceToViewNormal
			bestTarget = targetable
		end
	end
	return bestTarget
end

-- nil ChangeTarget(CoreObject|Player)
-- Update the current target
function ChangeTarget(newTarget)
	if newTarget and newTarget:IsA("Player") then
		Events.Broadcast("OnTargetChanged", newTarget) 
		Events.BroadcastToServer("OnTargetChanged", newTarget)
	else
		local npc = newTarget and newTarget:GetCustomProperty("Targetable"):WaitForObject()
		--print("TargetSelector:ChangeTarget " .. tostring(npc))
		Events.Broadcast("OnTargetChanged", npc)
		Events.BroadcastToServer("OnTargetChanged", npc and npc:GetReference())
	end
	currentTarget = newTarget
end

function Tick()
	-- The targetting zone follow the player view each frame.
	local lookRotation = localPlayer:GetLookWorldRotation()
	targetZoneRoot:SetWorldRotation(lookRotation)
	
	-- Select the closest target to view direction normal if target not locked.
	if not lockTarget then
		local bestTarget = SelectTarget(lookRotation)
		if bestTarget ~= currentTarget then
			ChangeTarget(bestTarget)
		end
	end
end

targetZoneRoot:AttachToPlayer(localPlayer, "root")

trigger.beginOverlapEvent:Connect(OnBeginOverlap)
trigger.endOverlapEvent:Connect(OnEndOverlap)

localPlayer.bindingPressedEvent:Connect(OnBindingPressed)
