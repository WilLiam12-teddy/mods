--[[
The crafting recipe can be a bit variable to avoid conflicts.
for now, utilise homedecor's plastic sheets and default iron/steel ingot.
]]
local p = "homedecor:plastic_sheeting"
local m = "default:steel_ingot"
local c = "default:steelblock"
local e = ""

local hasmod = function(name)
	return minetest.get_modpath(name) ~= nil
end
if hasmod("default") and hasmod("homedecor") then
	minetest.register_craft({
		output = "bowlingball:ball",
		recipe = {
			{ e, p, e },
			{ p, m, p },
			{ e, p, e },
		},
	})
	minetest.register_craft({
		output = "bowlingball:return 9",
		recipe = {
			{ e, p, e },
			{ p, c, e },
			{ e, p, e },
		},
	})
end

