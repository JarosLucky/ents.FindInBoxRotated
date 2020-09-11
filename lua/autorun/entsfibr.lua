local ipairs = ipairs
local WorldToLocal = WorldToLocal
local table_insert = table.insert
local ents_FindInSphere = ents.FindInSphere

function ents.FindInBoxRotated(vCenter, aRotation, vMinBox, vMaxBox, flDist)
	local tResult = {}

	for _, eTarget in ipairs(ents_FindInSphere(vCenter, flDist))do
		if WorldToLocal(eTarget:GetPos(), eTarget:GetAngles(), vCenter, aRotation):WithinAABox(vMinBox, vMaxBox) then
			table_insert(tResult, eTarget)
		end
	end

  	return tResult
end
