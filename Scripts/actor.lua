function MAXActor(def, config)
	config = config or {}
	def.InitCommand = function(s)
		local shouldFilter = (config.filtering~=nil) and config.filtering or global "filtering"
		s:SetTextureFiltering(shouldFilter)
		if s:GetCommand("Init2") then
			return s:playcommand("Init2")
		end
	end
	return def
end

--LoadActorM sets a bunch of useful parameters
function LoadActorM( path, config, ... )
	local t = LoadActorFunc( path, 2 )
	assert(t)
	local results = t(...)
	return MAXActor(results, config)
end

function Actor:FullScreen43()
	SCREENMAN:SystemMessage(SCREEN_WIDTH_43)
	return self:zoomto(SCREEN_WIDTH_43,SCREEN_HEIGHT)
end