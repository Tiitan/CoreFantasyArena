local projectileScript = script:GetCustomProperty("ProjectileScript"):WaitForObject()
local rootProjectileFx = script:GetCustomProperty("RootProjectileFx"):WaitForObject()

local startPosition = projectileScript.parent:GetWorldPosition()
local initialTime = time()
local arrivalTime = projectileScript:GetCustomProperty("ArrivalTime")
local target = projectileScript:GetCustomProperty("Target"):GetObject()
local target = target or Game.FindPlayer(projectileScript:GetCustomProperty("TargetPlayer"))
local distance = target and (target:GetWorldPosition() - startPosition).size or -1

function Tick()
	if not target or not arrivalTime then return end

	local progress = (time() - initialTime) / (arrivalTime - initialTime)
	local newPosition = Vector3.Lerp(startPosition, target:GetWorldPosition(), progress)

	newPosition.z = newPosition.z + math.sin(progress * math.pi) * (distance / 10) -- add fake gravity curvature
	-- TODO: rotation
	rootProjectileFx:SetWorldPosition(newPosition)
end

function OnNetworkedPropertyChanged(coreObject, propertyName)
	if propertyName == "ArrivalTime" then
		arrivalTime = projectileScript:GetCustomProperty("ArrivalTime")
	elseif  propertyName == "Target" then
		target = projectileScript:GetCustomProperty("Target"):WaitForObject()
		distance = (target:GetWorldPosition() - startPosition).size	
	elseif  propertyName == "TargetPlayer" then
		target = Game.FindPlayer(projectileScript:GetCustomProperty("TargetPlayer"))
		distance = (target:GetWorldPosition() - startPosition).size	
	end
end

projectileScript.networkedPropertyChangedEvent:Connect(OnNetworkedPropertyChanged)
