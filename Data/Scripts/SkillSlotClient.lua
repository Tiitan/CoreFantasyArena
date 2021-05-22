--[[
SkillSlotClient.
Animate the skill slot, connect to abilities through SkillBarClient
Attached on a SkillSlot template object.
--]]

local skillUiImage = script:GetCustomProperty("SkillUiImage"):WaitForObject()
local statusUiImage = script:GetCustomProperty("StatusUiImage"):WaitForObject()
local parent = script.parent
local colors = {
	[AbilityPhase.READY] = parent:GetCustomProperty("ReadyColor"),
	[AbilityPhase.CAST] = parent:GetCustomProperty("CastColor"),
	[AbilityPhase.EXECUTE] = parent:GetCustomProperty("ExecuteColor"),
	[AbilityPhase.RECOVERY] = parent:GetCustomProperty("RecoveryColor"),
	[AbilityPhase.COOLDOWN] = parent:GetCustomProperty("CooldownColor")
}

local ability = nil
local defaultIcon = skillUiImage:GetImage()
local defaultTint = skillUiImage:GetColor()
local maxStatusUiHeight = statusUiImage.height

local updateStatusTask = nil

-- Ability subscribed events
local readyEvent = nil
local castEvent = nil
local executeEvent = nil
local cooldownEvent = nil
local recoveryEvent = nil
local destroyEvent = nil

-- nil OnPhaseChanged(ability)
-- all ability events binding and also called on Init fril RegisterSkill()
-- Update status and start/stop update task
function OnPhaseChanged(ability)
	statusUiImage:SetColor(colors[ability:GetCurrentPhase()])
	UpdateStatusProgress()
	
	local currentPhase = ability and ability:GetCurrentPhase() or AbilityPhase.READY
	if currentPhase ~= AbilityPhase.READY and not updateStatusTask then
		updateStatusTask = Task.Spawn(UpdateStatusProgress, 0)
		updateStatusTask.repeatCount = -1
		updateStatusTask.repeatInterval = 0
	end
	if currentPhase == AbilityPhase.READY and updateStatusTask then
		updateStatusTask:Cancel()
		updateStatusTask = nil
	end
end

-- nil OnDestroyListener(Ability)
-- subscribed in RegisterSkill
-- Clear the slot icon when the gear is destroyed.
function OnDestroyAbility(prevAbility)
	if prevAbility == ability then
		RegisterSkill(nil)
	end
end

-- nil RegisterSkill(Ability)
-- ability: Ability (with "Icon" and "IconTint" custom properties) or nil
-- Called by SkillSlotClient on equipment Init
-- TODO: also called on weapon swap
-- replace the current icon and bindings
function RegisterSkill(newAbility)
	if ability then
		readyEvent:Disconnect()
		castEvent:Disconnect()
		executeEvent:Disconnect()
		cooldownEvent:Disconnect()
		recoveryEvent:Disconnect()
		destroyEvent:Disconnect()
	end
	
	if newAbility then
		readyEvent = newAbility.readyEvent:Connect(OnPhaseChanged)
		castEvent = newAbility.castEvent:Connect(OnPhaseChanged)
		executeEvent = newAbility.executeEvent:Connect(OnPhaseChanged)
		cooldownEvent = newAbility.cooldownEvent:Connect(OnPhaseChanged)
		recoveryEvent = newAbility.recoveryEvent:Connect(OnPhaseChanged)
		destroyEvent = newAbility.destroyEvent:Connect(OnDestroyAbility)
	end

	ability = newAbility	
	statusUiImage.visibility = (ability ~= nil) and Visibility.INHERIT or Visibility.FORCE_OFF
	local icon = ability and ability:GetCustomProperty("Icon") or defaultIcon
	local tint = ability and ability:GetCustomProperty("IconTint") or defaultTint
	skillUiImage:SetImage(icon)
	skillUiImage:SetColor(tint)
	
	if ability then
		OnPhaseChanged(ability)
	end
end

-- nil UpdateStatusProgress()
function UpdateStatusProgress()
	local remaining = 1
	local currentPhase = ability and ability:GetCurrentPhase() or AbilityPhase.READY
	if currentPhase == AbilityPhase.CAST then
		remaining = ability:GetPhaseTimeRemaining() / ability.castPhaseSettings.duration
	elseif currentPhase == AbilityPhase.EXECUTE then
		remaining = ability:GetPhaseTimeRemaining() / ability.executePhaseSettings.duration
	elseif currentPhase == AbilityPhase.RECOVERY then
		remaining = ability:GetPhaseTimeRemaining() / ability.recoveryPhaseSettings.duration
	elseif currentPhase == AbilityPhase.COOLDOWN then
	    remaining = ability:GetPhaseTimeRemaining() / ability.cooldownPhaseSettings.duration
	end

	if remaining ~= remaining then remaining = 1 end -- NaN check 
	statusUiImage.height = math.floor(maxStatusUiHeight * remaining)
	
	if updateStatusTask then
		updateStatusTask.repeatCount = -1
		updateStatusTask.repeatInterval = 0
	end
end
