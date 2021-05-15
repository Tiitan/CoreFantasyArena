local gearSelectorPanel = script:GetCustomProperty("GearSelectorPanel"):WaitForObject()
local equipmentLibrary = script:GetCustomProperty("EquipmentLibrary"):WaitForObject().context
local gearSelectorUi = script:GetCustomProperty("GearSelectorUi"):WaitForObject()
local gearSelectorUiItemTemplate = script:GetCustomProperty("GearSelectorUiItemTemplate")
local gearSlotButtons = script:GetCustomProperty("GearSlots"):WaitForObject():GetChildren()

-- prepare to swap colors when selecting a slot
local buttonBaseColor = gearSlotButtons[1]:GetButtonColor()
local hoveredBaseColor = gearSlotButtons[1]:GetHoveredColor()
local pressedBaseColor = gearSlotButtons[1]:GetPressedColor()
local buttonSelectedColor = gearSlotButtons[1]:GetCustomProperty("ButtonSelectedColor")
local hoveredSelectedColor = gearSlotButtons[1]:GetCustomProperty("HoveredSelectedColor")
local pressedSelectedColor = gearSlotButtons[1]:GetCustomProperty("PressedSelectedColor")

local localPlayer = Game.GetLocalPlayer()
local currentSelectedGearSlotButton = nil

-- nil UnloadGearSelectorPanel()
-- delete all gearSelectorUiItemTemplate, (child of gearSelectorUi)
function UnloadGearSelectorPanel()
	gearSelectorUiItems = gearSelectorUi:GetChildren()
	gearSelectorPanel.visibility = Visibility.FORCE_OFF
	for _, gearSelectorUiItem in pairs(gearSelectorUiItems) do
		gearSelectorUiItem:Destroy()
	end
end

-- nil InitGearSelectorUiItem(coreobject, table)
-- called from LoadGearSelectorPanel for each equipment
-- param gearSelectorUiItem: instance of gearSelectorUiItemTemplate
-- param equipmentData: context of equipmentData script
function InitGearSelectorUiItem(gearSelectorUiItem, equipmentData, position)
	gearSelectorUiItem.y = (gearSelectorUiItem.height + 10) * position
	local iconImageUi = gearSelectorUiItem:GetCustomProperty("IconImageUi"):WaitForObject()
	local image = equipmentData.GetIcon()
	iconImageUi:SetImage(image)
	iconImageUi:SetColor(equipmentData.GetIconTint())
	local textUi = gearSelectorUiItem:GetCustomProperty("TextUi"):WaitForObject()
	textUi.text = equipmentData.GetDisplayName()
	gearSelectorUiItem.clientUserData.equipmentData = equipmentData
end

-- nil LoadGearSelectorPanel()
-- Called when a slot is selected to open the gear selector panel
function LoadGearSelectorPanel(slot)
	gearSelectorPanel.visibility = Visibility.INHERIT
	
	-- add desequip button (tempalte default)
	local gearSelectorUiItem = World.SpawnAsset(gearSelectorUiItemTemplate, {parent = gearSelectorUi})
	gearSelectorUiItem.clickedEvent:Connect(OnGearSelected)
	
	local equipmentList = equipmentLibrary.GetEquipments(slot)
	for i, equipmentData in ipairs(equipmentList) do
		gearSelectorUiItem = World.SpawnAsset(gearSelectorUiItemTemplate, {parent = gearSelectorUi})
		InitGearSelectorUiItem(gearSelectorUiItem, equipmentData, i)
		gearSelectorUiItem.clickedEvent:Connect(OnGearSelected)
	end
end

-- nil OnGearSelected(UiButton)
-- Called when an item was clicked in selection panel
-- change gear selection and close selector
function OnGearSelected(gearSelectorUiItem)
	local imageUi = currentSelectedGearSlotButton:GetCustomProperty("Icon"):WaitForObject()
	equipmentData = gearSelectorUiItem.clientUserData.equipmentData

	imageUi:SetImage(equipmentData and equipmentData.GetIcon())
	imageUi.visibility = equipmentData and Visibility.INHERIT or Visibility.FORCE_OFF
	
	local slot = currentSelectedGearSlotButton:GetCustomProperty("Slot")
	Events.BroadcastToServer("ChangeEquipment", equipmentData and equipmentData.script.id, slot)
	
	-- close selector panel
	OnGearSlotSelectionChanged(nil)
end

-- nil OnGearSlotButtonClicked(UiButton)
-- called when a slot button is clicked or when an item was clicked in selection panel
function OnGearSlotSelectionChanged(gearSlotButton)
	previousSelectedGearSlotButton = currentSelectedGearSlotButton
	if currentSelectedGearSlotButton then
		UnloadGearSelectorPanel()
		-- click again the same slot toggle off the selector panel
		currentSelectedGearSlotButton:SetButtonColor(buttonBaseColor)
		currentSelectedGearSlotButton:SetHoveredColor(hoveredBaseColor)
		currentSelectedGearSlotButton:SetPressedColor(pressedBaseColor)

		currentSelectedGearSlotButton = nil	
	end

	-- load selector panel
	if gearSlotButton and previousSelectedGearSlotButton ~= gearSlotButton then
		currentSelectedGearSlotButton = gearSlotButton

		slot = gearSlotButton:GetCustomProperty("ItemSlot")
		LoadGearSelectorPanel(slot)

		-- update selected slot graphics
		gearSlotButton:SetButtonColor(buttonSelectedColor)
		gearSlotButton:SetHoveredColor(hoveredSelectedColor)
		gearSlotButton:SetPressedColor(pressedSelectedColor)
	end
end

function OnBindingPressed(player, bindingPressed)
	-- Keybind "I": toggle panel
	if bindingPressed == "ability_extra_27" then
		if script.parent.visibility == Visibility.INHERIT then
			script.parent.visibility = Visibility.FORCE_OFF
			UnloadGearSelectorPanel()
			UI.SetCursorVisible(false)
			UI.SetCanCursorInteractWithUI(false)
			UI.SetCursorLockedToViewport(true)
		else
			script.parent.visibility = Visibility.INHERIT
			UI.SetCursorVisible(true)
			UI.SetCanCursorInteractWithUI(true)
			UI.SetCursorLockedToViewport(false)
		end
	end
end

for _, gearSlotButton in pairs(gearSlotButtons) do
	gearSlotButton.clickedEvent:Connect(OnGearSlotSelectionChanged)
end

localPlayer.bindingPressedEvent:Connect(OnBindingPressed)
script.parent.visibility = Visibility.FORCE_OFF
