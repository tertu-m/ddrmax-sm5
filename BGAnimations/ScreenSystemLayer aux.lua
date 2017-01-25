--These cover the edge of the screen in widescreen modes.
local innerColor = color "#0FB7BF"
local edgeColor = color "#043033"


local f = Def.ActorFrame{}

if SCREEN_WIDTH > SCREEN_WIDTH_43 then
	local coverWidth = (SCREEN_WIDTH-SCREEN_WIDTH_43)/2
	local quadDefs = {
		{x=SCREEN_LEFT, flip=false},
		{x=SCREEN_RIGHT, flip=true}
	}
	for _, quadDef in pairs(quadDefs) do
		table.insert(f, Def.Quad{
			InitCommand=function(s)
				s:basezoomx(coverWidth):basezoomy(SCREEN_HEIGHT)
				:halign(0):x(quadDef.x):y(SCREEN_CENTER_Y)
				:diffuserightedge(innerColor):diffuseleftedge(edgeColor)
				:zoomx(quadDef.flip and -1 or 1)
			end
		})
	end
end

return f