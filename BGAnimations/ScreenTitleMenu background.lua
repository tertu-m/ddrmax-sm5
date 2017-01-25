set_global('lowres', false)

return LoadActorM(graphic "_title screen.png")..{
	Init2Command=function(s) s:FullScreen43():Center() end
}