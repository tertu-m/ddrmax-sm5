return LoadActorM(graphic "_section wheel item.png")..{
	Init2Command=function(s) 
		if s:GetParent() then
			s:GetParent():MaskDest()
		end 
	end
}