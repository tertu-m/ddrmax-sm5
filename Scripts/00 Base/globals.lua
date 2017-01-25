--Various global variables for various purposes.
tertuDDRMAX = {}
local g = tertuDDRMAX

function global(name)
	return g[name]
end
function set_global(name, value)
	g[name] = value
end

--lowres is set when the arcade version of DDRMAX would switch to a low-res
--mode. this is used to update the credits font and if i can think of something
--else to do with it i will.
g.lowres = false
--filtering controls texture filtering idk what else to say
g.filtering = true