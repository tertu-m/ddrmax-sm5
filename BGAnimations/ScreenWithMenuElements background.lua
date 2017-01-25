--menu screens are never running in low-resolution mode
set_global('lowres', false)

local f = Def.ActorFrame{}

table.insert(f, LoadActorM(graphic "_menu background.png")..{
	Init2Command=function(s) s:FullScreen43():Center() end
})

--we use these masks to make ScreenSelectMusic's wheel work better.
local maskDefs = {{height=52, y=0}, {height=44,y=SCREEN_HEIGHT-44}}

for _, maskDef in pairs(maskDefs) do
	table.insert(f, Def.Quad{
		InitCommand=function(s) s:valign(0):xy(SCREEN_CENTER_X, maskDef.y)
			:zoomy(maskDef.height):zoomx(SCREEN_WIDTH_43):MaskSource()
		end
	})
end

return f