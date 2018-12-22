function ents.FindInBoxRotated(pos,ang,x,y,z,dist)
  local tbl={}
  for _,v in ipairs(ents.FindInSphere(pos,dist))do
    local vec=WorldToLocal(v:GetPos(),v:GetAngles(),pos,ang)
    if(vec.x<=x&&vec.x<=-x)&&(vec.y<=y&&vec.y<=-y)&&(vec.z<=z&&vec.z<=-z)then
      table.insert(tbl,v)
    end
  end
  return tbl
end
