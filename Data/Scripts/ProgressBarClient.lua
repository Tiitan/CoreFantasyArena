local propUiText = script:GetCustomProperty("UiText"):WaitForObject()
local propProgressImage = script:GetCustomProperty("ProgressImage"):WaitForObject()
local propProgress = script:GetCustomProperty("Progress"):WaitForObject()
local propIndicator = script:GetCustomProperty("Indicator")
local propRegenColor = script:GetCustomProperty("RegenColor")
local propDegenColor = script:GetCustomProperty("DegenColor")
local IndicatorMultiplier = script:GetCustomProperty("IndicatorMultiplier")

-- int, damage and heal over time value
local currentRegen = 0
-- array of instantiated continuous indicator, range [-5; +5]
local RegenObjects = {}

-- float, estimated current progress value (between server update)
local estimatedvalue = 0.0
-- float, estimated current progress total (between server update)
local estimatedtotal = 0.0
-- float, regen used to calculate prediction, match: currentRegen value * IndicatorMultiplier
local predictionRegen = 0.0

-- nil OnUpdateBarProgress(float, float)
-- Called from PlayerBarsClient
function OnUpdateBarProgress(value, total)
	local progress = value / total
	currentProgress = progress
	propProgressImage.width = math.floor(progress * propProgress.width)
	propProgress.progress = currentProgress
	if propUiText then -- None for target / group panel as they display the name
		propUiText.text = tostring(math.ceil(value))
	end
end

-- nil OnUpdateBarRegen(float)
-- instanciate and destroy regen images
-- Called from PlayerBarsClient
function OnUpdateBarRegen(newRegen)
	predictionRegen = newRegen
	newRegen = math.floor(newRegen / IndicatorMultiplier) -- 5pv/s = 1 indicator
	
	-- increase regen
	while currentRegen < newRegen do
		
		if currentRegen >= 0 then
			currentRegen = currentRegen + 1
			local newRegenImage = World.SpawnAsset(propIndicator, {parent= propProgress})
			newRegenImage.x = 30 + currentRegen * newRegenImage.width
			newRegenImage.rotationAngle = 90
			newRegenImage:SetColor(propRegenColor)
			RegenObjects[currentRegen] = newRegenImage
		else
			RegenObjects[currentRegen]:Destroy()
			currentRegen = currentRegen + 1
		end
			
	end
	--reduce regen
	while currentRegen > newRegen do
		if currentRegen <= 0 then
			currentRegen = currentRegen - 1
			local newRegenImage = World.SpawnAsset(propIndicator, {parent= propProgress})
			newRegenImage.x = -30 + currentRegen * newRegenImage.width
			newRegenImage.rotationAngle = -90
			newRegenImage:SetColor(propDegenColor)
			RegenObjects[currentRegen] = newRegenImage
		else
			RegenObjects[currentRegen]:destroy()
			currentRegen = currentRegen - 1
		end
	end
end

-- nil ProgressUpdate(float or nil, float or nil)
-- progress update from server, actualise current estimation
-- unknown values can be nil for partial update (usual case)
function ProgressUpdate(value, total)
	if value ~= nil then
		estimatedvalue = value
	end
	if total ~= nil then
		estimatedtotal = total
	end
	OnUpdateBarProgress(estimatedvalue, estimatedtotal)
end

function Tick(deltatime)
	-- progress prediction
	if predictionRegen ~= 0 and estimatedtotal ~= 0 then
		estimatedvalue = estimatedvalue + predictionRegen * deltatime
		estimatedvalue = math.max(0, math.min(estimatedtotal, estimatedvalue))
		OnUpdateBarProgress(estimatedvalue, estimatedtotal)
	end
end