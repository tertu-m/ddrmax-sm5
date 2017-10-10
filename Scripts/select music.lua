function MusicWheelTransform(self,offsetFromCenter,itemIndex,numItems) 
	self:x( (offsetFromCenter*2)^2 )
	self:y( offsetFromCenter*46 ) 
end


--i don't think the params actually do anything.
function TextBannerAfterSet(self, _params)
	local title = self:GetChild("Title")
	local subtitle = self:GetChild("Subtitle")
	
	if subtitle:GetText() == "" then
		title:zoom(1):y(-4)
	else
		title:zoom(0.5):y(-8)
		subtitle:zoom(0.5):y(-1)
	end
end