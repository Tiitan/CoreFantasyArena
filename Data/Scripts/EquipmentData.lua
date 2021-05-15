--[[
Storage class for equipment meta data. Client and Server
Exposed trough Equipment Library to inventory window
just in time init because it wouldn't initialize on client otherwise
]]--

local icon
local iconTint
local slot
local displayName
local GetSlot
local equipmentTemplate

function GetIcon()
	icon = icon or script:GetCustomProperty("Icon")
	return icon
end

function GetIconTint()
	iconTint = iconTint or script:GetCustomProperty("IconTint")
	return iconTint
end

function GetSlotName()
	slot = slot or script:GetCustomProperty("Slot")
	return slot
end

function GetDisplayName()
	displayName = displayName or script:GetCustomProperty("DisplayName")
	return displayName
end

function GetEquipmentTemplate()
	equipmentTemplate = equipmentTemplate or script:GetCustomProperty("EquipmentTemplate")
	return equipmentTemplate
end
