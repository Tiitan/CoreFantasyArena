local root = script.parent
local textUi = script:GetCustomProperty("TextUI"):WaitForObject()
local targetImage = script:GetCustomProperty("TargetImage"):WaitForObject()
local player = Game.GetLocalPlayer()
local lockColor = script:GetCustomProperty("LockColor")
local targetColor = targetImage:GetColor()
local CharacterWrapperFactory = require(script:GetCustomProperty("CharacterWrapperFactory"))
local propHealthBarRoot = script:GetCustomProperty("HealthBarRoot"):WaitForObject()
local healthBar = propHealthBarRoot:FindChildByName("ProgressBarClient")

-- Initial size of the targetUi, divided by distance each frame
local refWidth = targetImage.width
local refHeight = targetImage.height

-- targeted CoreObject or Player
local currentTarget = nil

local prevHitPoints = -1 --todo remove with event

function OnTargetChanged(newTarget)
	currentTarget = newTarget and CharacterWrapperFactory.GetWrapper(newTarget)
	if currentTarget then
		prevHitPoints = -1 -- TODO event
		root.visibility = Visibility.INHERIT
		textUi.text = currentTarget:GetName()
	else
		root.visibility = Visibility.FORCE_OFF
	end
end

function OnTargetLockChanged(isLocked)
	if isLocked then
		targetImage:SetColor(lockColor)
	else
		targetImage:SetColor(targetColor)
	end
end

function Tick()
	if currentTarget then
		-- Update target image visual size and position to be above the 3D target position
		local targetPosition = currentTarget:GetWorldPosition()	
		local targetScreenPosition = UI.GetScreenPosition(targetPosition)
		if targetScreenPosition then
			local distance = (targetPosition - player:GetWorldPosition()).size
			if distance ~= 0 then
				targetImage.x = targetScreenPosition.x
	        	targetImage.y = targetScreenPosition.y

	        	-- exact math should be α = 2· arctan (objectSize / distance)
	        	-- this approaching formula is the result of testing, (sqrt?)
	       		local visualSize = 2 * math.atan(5/ (math.sqrt(distance)))
	        	targetImage.height = math.floor(refHeight * visualSize)
	        	targetImage.width = math.floor(refWidth * visualSize)
	        end
		end
		
		
		-- Update hitpoints. TODO event
		local hitpoints = currentTarget:GetHitPoints()
		if prevHitPoints ~= hitpoints then
			prevHitPoints = hitpoints
			local maxHitPoints = currentTarget:GetMaxHitPoints()
			healthBar.context.ProgressUpdate(hitpoints, maxHitPoints, 0)
		end
	end
end



root.visibility = Visibility.FORCE_OFF
Events.Connect("OnTargetChanged", OnTargetChanged)
Events.Connect("OnTargetLockChanged", OnTargetLockChanged)