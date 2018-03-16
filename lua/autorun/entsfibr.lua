function ents.FindInBoxRotated(pos,ang,x,y,z,dist)
  local tbl={}
  for _,v in pairs(ents.FindInSphere(Vector(),dist))do
    local vec=WorldToLocal(v:GetPos(),ang,pos,Angle())
    if(vec.x<=x&&vec.x<=-x)&&(vec.y<=y&&vec.y<=-y)&&(vec.z<=z&&vec.z<=-z)then
      table.insert(tbl,v)
    end
  end
  return tbl
end