local max = math.max
local ipairs = ipairs
local WorldToLocal = WorldToLocal
local table_insert = table.insert
local ents_FindInSphere = ents.FindInSphere
local ENTITY = FindMetaTable("Entity")
local WithinAABox = FindMetaTable("Vector").WithinAABox
local GetPos = ENTITY.GetPos
local Unpack = ENTITY.Unpack
local GetAngles = ENTITY.GetAngles

local flSqrBase = math.sqrt(2)
function ents.FindInBoxRotated(vCenter, aRotation, vMinBox, vMaxBox)
	local tResult = {}
	local index = 1

	for _, eTarget in ipairs(ents_FindInSphere(vCenter, flSqrBase * max(Unpack(vMaxBox - vMinBox)))) do
		if WithinAABox(WorldToLocal(GetPos(eTarget), GetAngles(eTarget), vCenter, aRotation), vMinBox, vMaxBox) then
			tResult[index] = eTarget
			index = index + 1
		end
	end

  	return tResult
end
