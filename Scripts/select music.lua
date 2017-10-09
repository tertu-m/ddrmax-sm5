function MusicWheelTransform(self,offsetFromCenter,itemIndex,numItems) 
	self:x( (offsetFromCenter*2)^2 + 16 )
	self:y( offsetFromCenter*46 ) 
end


--i don't think the params actually do anything.
function TextBannerAfterSet(self, _params)
	local xConst = -125
	local title = self:GetChild("Title")
	local subtitle = self:GetChild("Subtitle")
	local artist = self:GetChild("Artist")

	title:zoom(1):y(-4):x(xConst):halign(0)
	artist:zoom(0.5):y(8):x(xConst):halign(0)
end