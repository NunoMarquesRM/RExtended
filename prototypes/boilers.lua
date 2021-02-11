function npipecovers()
return {
    north = {
		filename = "__RExtended__/graphics/entity/machinery/pipe-cover-north.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		scale = 0.5,
    },
    east = {
		filename = "__RExtended__/graphics/entity/machinery/clear.png",
		priority = "extra-high",
		width = 32,
		height = 32,
    },
    south = {
		filename = "__RExtended__/graphics/entity/machinery/pipe-cover-south.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		scale = 0.5,
    },
    west = {
		filename = "__RExtended__/graphics/entity/machinery/clear.png",
		priority = "extra-high",
		width = 32,
		height = 32,
    }
}
end
------------------------------------------------------------
--- Boiler R2
local recipe_br2 = table.deepcopy(data.raw.recipe['boiler'])
recipe_br2.name = "boiler-r2"
recipe_br2.enabled = false
recipe_br2.ingredients = {
	{"boiler",2},
	{"pipe",2},
	{"copper-plate",5}
}
recipe_br2.result = "boiler-r2"


local item_br2 = table.deepcopy(data.raw.item['boiler'])
item_br2.name = "boiler-r2"
item_br2.icon = "__RExtended__/graphics/icons/boiler/r2.png"
item_br2.icon_size = 32
item_br2.subgroup = "power-steam"
item_br2.order = "b-a"
item_br2.place_result = "boiler-r2"


local br2 = table.deepcopy(data.raw['boiler']['boiler'])
br2.name = "boiler-r2"
br2.icon = "__RExtended__/graphics/icons/boiler/r2.png"
br2.icon_size = 32
br2.minable = {mining_time = 0.3, result = "boiler-r2"}
br2.max_health = 350
br2.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
br2.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
br2.mode = "output-to-separate-pipe"
br2.target_temperature = 200
br2.fluid_box = {
	base_area = 5,
	height = 2,
	base_level = -1,
	pipe_covers = npipecovers(),
	pipe_connections = {
		{type = "input-output", position = {0, -2}},
		{type = "input-output", position = {0, 2}},
		{type="input-output", position = {2, 0}},
	},
	production_type = "input-output",
	filter = "water"
}
br2.output_fluid_box = {
	base_area = 5,
	height = 2,
	pipe_covers = npipecovers(),
	pipe_connections = { {type="output", position = {-2, 0}},},
	production_type = "output",
	filter = "steam"
}
br2.energy_consumption = "15MW"
br2.energy_source = {
	type = "burner",
	fuel_category = "chemical",
	effectivity = 1,
	fuel_inventory_size = 1,
	emissions = 0.011,
	smoke = {{
		name = "smoke",
		north_position ={-0.125, -1}, south_position ={-0.125, -1},
		east_position ={-0.125, -1}, west_position ={-0.125, -1},
		height = 1, deviation = {0.1, 0.1},
		frequency = 25,
	}}
}
br2.structure = {
	north = {
		layers ={
		{
			filename = "__RExtended__/graphics/entity/boiler/r2.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.25, -0.1},
			scale = 0.5,
		},}
	},
	east = {
		layers ={
		{
			filename = "__RExtended__/graphics/entity/boiler/r2.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.25, -0.1},
			scale = 0.5,
		},}
	},
	south = {
		layers = {
		{
			filename = "__RExtended__/graphics/entity/boiler/r2.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.25, -0.1},
			scale = 0.5,
		},}
	},
	west = {
		layers = {
		{
			filename = "__RExtended__/graphics/entity/boiler/r2.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.25, -0.1},
			scale = 0.5,
		},}
	}
}
br2.fire = {}
br2.fire_glow = {}
br2.burning_cooldown = 20
br2.pictures = pipepictures()

data:extend({recipe_br2,item_br2,br2})


------------------------------------------------------------
--- Boiler R3
data:extend({
--Entity 
{--Boiler R3
	type = "boiler",
	name = "boiler-r3",
	icon = "__RExtended__/graphics/icons/boiler/r3.png",
	icon_size = 64,
	flags = {"placeable-player", "player-creation"},
	minable = {mining_time = 0.3, result = "boiler-r3"},
	max_health = 350,
	corpse = "small-remnants",
	resistances = {{type = "fire",percent = 80}},
	working_sound = {sound = {filename = "__base__/sound/boiler.ogg",volume = 1.5},},
	collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	mode = "output-to-separate-pipe",
	target_temperature = 200,
	fluid_box = {
		base_area = 7.55,
		height = 2,
		base_level = -2,
		pipe_connections = {
			{ type = "input-output", position = { 2,  0} },
			{ type = "input", position = { 0,  2} },
			{ type = "input-output", position = {-2,  0} }
		},
		production_type = "input-output",
		filter = "water"
	},
	output_fluid_box = {
		base_area = 3,
		height = 2,
		pipe_connections = { {type="output", position = {0, -2}},},
		production_type = "output",
		filter = "steam"
	},
	energy_consumption = "60MW",
	energy_source =
	{
		type = "burner",
		fuel_category = "chemical",
		effectivity = 0.75,
		fuel_inventory_size = 1,
		emissions = 0.011,
		smoke = {{
			name = "smoke",
			north_position = {-0.75, -2.25},
			deviation = {0.1, 0.1},
			frequency = 20.0
		}}
	},
	structure =
	{
		north ={ filename = "__RExtended__/graphics/entity/boiler/r3.png", priority = "extra-high", width = 256, height = 256, scale=0.5, 		shift = {0.375, -0.25} },
		east ={ filename = "__RExtended__/graphics/entity/boiler/r3.png", priority = "extra-high", width = 256, height = 256, scale=0.5, 		shift = {0.375, -0.25} },
		south ={ filename = "__RExtended__/graphics/entity/boiler/r3.png", priority = "extra-high", width = 256, height = 256, scale=0.5, 	shift = {0.375, -0.25} },
		west ={ filename = "__RExtended__/graphics/entity/boiler/r3.png", priority = "extra-high", width = 256, height = 256, scale=0.5, 	shift = {0.375, -0.25} },
	},
	fire ={},
	fire_glow = {},
	burning_cooldown = 20,
	pictures = pipepictures()
}
})

local recipe_br3 = table.deepcopy(data.raw.recipe['boiler'])
recipe_br3.name = "boiler-r3"
recipe_br3.enabled = false
recipe_br3.ingredients = {
	{"boiler-r2",2},
	{"pipe",3},
	{"steel-plate",3}
}
recipe_br3.result = "boiler-r3"

local item_br3 = table.deepcopy(data.raw.item['boiler'])
item_br3.name = "boiler-r3"
item_br3.icon = "__RExtended__/graphics/icons/boiler/r3.png"
item_br3.icon_size = 64
item_br3.subgroup = "power-steam"
item_br3.order = "b-c"
item_br3.place_result = "boiler-r3"

data:extend({recipe_br3,item_br3})

------------------------------------------------------------
--Oil Steam Boiler
data:extend({
	{--Item
		type = "item",
		name = "oil-steam-boiler",
		icon = "__RExtended__/graphics/icons/boiler/oil-steam-boiler.png",
		icon_size = 32,
		subgroup = "power-steam",
		order = "b-e",
		place_result = "oil-steam-boiler",
		stack_size = 25
	},
	{--Recipe
		type = "recipe",
		name = "oil-steam-boiler",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{"copper-gear-wheel-r1", 7},
			{"steel-plate", 10},
			{"pipe", 10},
		},
		result = "oil-steam-boiler"
	},
	{--Entity
		type = "boiler",
		name = "oil-steam-boiler",
		icon = "__RExtended__/graphics/icons/boiler/oil-steam-boiler.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.1, result = "oil-steam-boiler"},
		max_health = 300,
		corpse = "big-remnants",
		dying_explosion = "big-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		mode = "output-to-separate-pipe",
		resistances = {
			{
				type = "fire",
				percent = 90
			},
			{
				type = "explosion",
				percent = 30
			},
			{
				type = "impact",
				percent = 30
			}
		},
		target_temperature = 300,
		fluid_box = {
			base_area = 1,
			height = 2,
			base_level = -1,
			--pipe_covers = pipecoverspictures(),
			pipe_connections = {{ type="input", position = {1, -2} }},
			production_type = "input",
			filter = "water"
		},
		output_fluid_box = {
			base_area = 1,
			height = 2,
			base_level = 1,
			--pipe_covers = pipecoverspictures(),
			pipe_connections = {{type = "output", position = {0, 2}}},
			production_type = "output",
			filter = "steam"
		},
		energy_consumption = "100MW",
		energy_source = {
			type = "fluid",
			emissions = 0.01,
			burns_fluid = true,
			fluid_usage_per_tick = 0,
			scale_fluid_usage = true,
			fluid_box = {
				base_area = 1,
				height = 2,
				base_level = -1,
				--pipe_covers = pipecoverspictures(),
				pipe_connections = {{ type="input", position = {-1, -2} }},
				production_type = "input",
				filter = "diesel-fuel"
			},
		},
		working_sound = {
			sound = { filename = "__RExtended__/sounds/Energy/oil-boiler-loop-2.ogg", volume = 0.35},
			idle_sound = { filename = "__RExtended__/sounds/Energy/steam-offlet.ogg", volume = 0.35 },
			max_sounds_per_type = 2,
		},
		structure = {
			north = {
				priority = "extra-high",
				width = 256,
				height = 223,
				line_length = 8,
				shift = {0.5, 0},
				filename = "__RExtended__/graphics/entity/boiler/OilSteamBoiler/ob_n_sheet.png",
				frame_count = 8,
				animation_speed = 0.4,
				scale = 0.5,
				run_mode = "forward-then-backward",
			},
			east = {
				priority = "extra-high",
				width = 256,
				height = 175,
				line_length = 8,
				shift = {0.45, 0},
				filename = "__RExtended__/graphics/entity/boiler/OilSteamBoiler/ob_w_sheet.png",
				frame_count = 8,
				animation_speed = 0.4,
				scale = 0.5,
				run_mode = "forward-then-backward",
			},
			south = {
				priority = "extra-high",
				width = 256,
				height = 220,
				line_length = 8,
				shift = {0.5, 0},
				filename = "__RExtended__/graphics/entity/boiler/OilSteamBoiler/ob_s_sheet.png",
				frame_count = 8,
				animation_speed = 0.4,
				scale = 0.5,
				run_mode = "forward-then-backward",
			},
			west = {
				priority = "extra-high",
				width = 256,
				height = 173,
				line_length = 8,
				shift = {0.45, 0},
				filename = "__RExtended__/graphics/entity/boiler/OilSteamBoiler/ob_e_sheet.png",
				frame_count = 8,
				animation_speed = 0.4,
				scale = 0.5,
				run_mode = "forward-then-backward",
			}
		},
		fire = {},
		fire_glow = {},
		burning_cooldown = 40
	}
})

