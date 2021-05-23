--[[
Library  exposing all EquipmentData
Server and Client
]]--

-- init equipmentDatas:
-- get all library's coreobject then fetch the script context
local equipmentDatas = {}
local storageIdMap = {}

-- table GetEquipments(string)
-- Used by client GearPanel
-- return: all equipment for a slot as a list of EquipmentData
function GetEquipments(slot)
	--allEquipmentData = allEquipmentData or script:GetChildren()
	local list = {}
	for _, equipmentData in pairs(equipmentDatas) do
		if equipmentData.GetSlotName() == slot then
			table.insert(list, equipmentData)
		end
	end
	return list
end

-- EquipmentData.context GetEquipment(string)
-- find an equipment from his MUID
-- used for communication between server and client
function GetEquipment(muid)
	return equipmentDatas[muid]
end

-- EquipmentData.context GetEquipmentByStorageId(int)
-- used for persistant storage deserialization
function GetEquipmentByStorageId(storageId)
	local muid = storageIdMap[storageId]
	return equipmentDatas[muid]
end

local equipmentDataObjects = script:GetChildren()
for _, equipmentDataObject in pairs(equipmentDataObjects) do
	equipmentDatas[equipmentDataObject.id] = equipmentDataObject.context
	
	-- storageId mapping
	local storageId = equipmentDataObject:GetCustomProperty("StorageId") -- context not initialized
	if storageIdMap[storageId] then
		local prevEquipment = GetEquipmentByStorageId(storageId)
		warn("Duplicated storageId: " .. prevEquipment.GetDisplayName() .. " and " .. equipmentDataObject.context.GetDisplayName())
	end
	storageIdMap[storageId] = equipmentDataObject.id
end