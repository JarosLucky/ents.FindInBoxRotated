local ipairs = ipairs
local WorldToLocal = WorldToLocal
local table_insert = table.insert
local ents_FindInSphere = ents.FindInSphere
local ENTITY = FindMetaTable("Entity")
local WithinAABox = FindMetaTable("Vector").WithinAABox
local GetPos = ENTITY.GetPos
local GetAngles = ENTITY.GetAngles

function ents.FindInBoxRotated(vCenter, aRotation, vMinBox, vMaxBox, flDist)
	local tResult = {}

	for _, eTarget in ipairs(ents_FindInSphere(vCenter, flDist)) do
		if WithinAABox(WorldToLocal(GetPos(eTarget), GetAngles(eTarget), vCenter, aRotation), vMinBox, vMaxBox) then
			table_insert(tResult, eTarget)
		end
	end

  	return tResult
end
