--[[
Library  exposing all EquipmentData
Server and Client
]]--

-- init equipmentDatas:
-- get all library's coreobject then fetch the script context
local equipmentDatas = {}
local equipmentDataObjects = script:GetChildren()
for _, equipmentDataObject in pairs(equipmentDataObjects) do
	equipmentDatas[equipmentDataObject.id] = equipmentDataObject.context
end

-- table GetEquipments(string)
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

-- Script GetEquipment(string)
-- find an equipment from his id
-- used for communication between server and client
function GetEquipment(id)
	return equipmentDatas[id]
end
