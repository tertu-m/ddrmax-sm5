--This function lets you calculate a best approximation of a number of frames
--at a given frame delta (default)
function ApproxFrames(origFrames, tgtRate, origRate)
	origRate = origRate or 1/60
	return math.max(1,math.round((origFrames*origRate)/tgtRate))
end

function TimeToWaitFrames(target, baseRate)
	return math.max(0, TimeToFrames(target, baseRate)-1)
end

function graphic(name, optional)
	assert(name~="", "name cannot be blank!")
	return THEME:GetAbsolutePath("Graphics/"..name, optional)
end

function table.map(tab, fn)
	local out = {}
	for idx, val in ipairs(tab) do
		out[idx] = fn(val)
	end
	return out
end

--stuff for dealing with always trying to run in 4:3
local targetAspect = 4/3
SCREEN_WIDTH_43 = math.round(SCREEN_HEIGHT * targetAspect)
SCREEN_LEFT_43 = math.round(SCREEN_CENTER_X - SCREEN_WIDTH_43/2)
SCREEN_RIGHT_43 = math.round(SCREEN_CENTER_X + SCREEN_WIDTH_43/2)