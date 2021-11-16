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

data:extend({
	{--Item Diesel Genarator
		type = "item",
		name = "petroleum-generator",
		icon = "__RExtended__/graphics/icons/steam-engines/diesel-generator-icon.png",
		icon_size = 32,
		subgroup = "power-steam",
		order = "c-c",
		place_result = "petroleum-generator",
		stack_size = 20
	},
    {--Recipe Diesel Genarator
		type = "recipe",
		name = "petroleum-generator",
		energy_required = 10,
		enabled = false,
		ingredients = {
			{"steel-plate", 5},
			{"engine-unit", 5},
			{"electronic-circuit", 10},
			{"pipe", 10}
		},
		result = "petroleum-generator"
    },
    {--Entity Diesel Genarator
		type = "generator",
		name = "petroleum-generator",
		icon = "__RExtended__/graphics/icons/steam-engines/diesel-generator-icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.7, result = "petroleum-generator"},
		max_power_output = "5MW",
		max_health = 300,
		corpse = "big-remnants",
		effectivity = 1,
		fluid_usage_per_tick = 35/60, --0/35
		burns_fluid = true,
		scale_fluid_usage = false, --if true the Diesel Genarator doesn't pass 1/35 in the fuild consumption but achieves the maximum output (energy)
		maximum_temperature = 300,
		resistances = {
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-0.7, -2.7}, {0.7, 2.7}},
		selection_box = {{-1, -3}, {1, 3}},
		fluid_box = {
			base_area = 1,
			base_level = -1,
			height = 2,
			pipe_covers = pipecoverspictures(),
			production_type = "input-output",
			pipe_connections = {
				{position = {-1.5, 0.5}, type = "input-output"},
				{position = {1.5, 0.5}, type = "input-output"}
			},
			filter = "diesel-fuel"
		},
		energy_source = {
			type = "electric",
			usage_priority = "secondary-output",
			emissions = 3 / 1000
		},
		vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		horizontal_animation = {
			filename = "__RExtended__/graphics/entity/steam-engine/dieselGenerator/dg_h_sheet.png",
			width = 448,
			height = 256,
			frame_count = 8,
			line_length = 4,
			shift = {0.5, -0.40},
			flags = {"no-crop"},
			animation_speed = 0.8,
			scale = 0.5,
			run_mode = "forward-then-backward"
		},
		vertical_animation = {
			filename = "__RExtended__/graphics/entity/steam-engine/dieselGenerator/dg_v_sheet.png",
			width = 256,
			height = 448,
			frame_count = 8,
			line_length = 4,
			shift = {0.8, 0.1},
			flags = {"no-crop"},
			animation_speed = 0.8,
			scale = 0.5
		},
		smoke = {
			{
				name = "tank-smoke",
				north_position = {0.42, -0.85},
				east_position = {-1.15, -2.0},
				frequency = 10 / 32,
				starting_vertical_speed = 0.06,
				slow_down_factor = 1,
				starting_frame_deviation = 60
			},
			{
				name = "tank-smoke",
				north_position = {-0.42, -0.85},
				east_position = {-1.15, -1.8},
				frequency = 10 / 32,
				starting_vertical_speed = 0.06,
				slow_down_factor = 1,
				starting_frame_deviation = 60
			}
		},
		working_sound = {
			sound = {
				{
					filename = "__RExtended__/sounds/Energy/diesel-loop-1.ogg",
					volume = 0.5
				},
				{
					filename = "__RExtended__/sounds/Energy/diesel-loop-2.ogg",
					volume = 0.5
				},
				{
					filename = "__RExtended__/sounds/Energy/diesel-loop-3.ogg",
					volume = 0.5
				}
			},
			match_speed_to_activity = true,
			max_sounds_per_type = 2
		},
		min_perceived_performance = 0.4,
		performance_to_sound_speedup = 0.2
    },
{--Entity Steam Engine R2
	type = "generator",
	name = "steam-engine-r2",
	icon = "__RExtended__/graphics/icons/steam-engines/r2.png",
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
	minable = {mining_time = 0.3, result = "steam-engine-r2"},
	max_health = 650,
	corpse = "big-remnants",
	effectivity = 4.5,
	fluid_usage_per_tick = 30/60,--0/30
	maximum_temperature = 200,
	resistances = {{type = "fire",percent = 70}},
	collision_box = {{-1.3, -1.7}, {1.3, 1.7}},
	selection_box = {{-1.5, -2.0}, {1.5, 2.0}},
	fluid_box = {
		base_area = 2,
		pipe_covers = npipecovers(),				
		pipe_connections = {
			{ type = "input-output", position = {0, 2.5} },
			{ type = "input-output", position = {0,-2.5} },
		},
		production_type = "input-output",
		filter = "steam",
	},
	fluid_input = {
		name = "steam",
		amount = 0.0,
		minimum_temperature = 100.0
	},
	energy_source = {
		type = "electric",
		usage_priority = "secondary-output"
	},
	horizontal_animation = {
		filename = "__RExtended__/graphics/entity/steam-engine/r2/r2-h.png",
		width = 380,
		height = 320,
		frame_count = 15,
		line_length = 5,
		shift = {0.5625,-0.28125},
		scale = 0.5,
	},
	vertical_animation = {
		filename = "__RExtended__/graphics/entity/steam-engine/r2/r2-v.png",
		width = 320,
		height = 320,
		frame_count = 15,
		line_length = 5,
		shift = {0.625, 0},
		scale = 0.5,			
	},
},
{--Entity Steam Engine R3
	type = "generator",
	name = "steam-engine-r3",
	icon = "__RExtended__/graphics/icons/steam-engines/r3.png",
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
	minable = {mining_time = 1, result = "steam-engine-r3"},
	max_health = 950,
	corpse = "big-remnants",
	effectivity = 18,
	fluid_usage_per_tick = 30/60, --0/30
	maximum_temperature = 200,
	resistances = {{type = "fire",percent = 70}},
	collision_box = {{-1.3, -1.7}, {1.3, 1.7}},
	selection_box = {{-1.5, -2.0}, {1.5, 2.0}},
	fluid_box = {
		base_area = 3,	
		pipe_covers = npipecovers(),				
		pipe_connections = {
			{ type = "input-output", position = {0, 2.5} },
			{ type = "input-output", position = {0,-2.5} },
		},
		production_type = "input-output",
		filter = "steam",
	},
	fluid_input = {
		name = "steam",
		amount = 0.0,
		minimum_temperature = 100.0
	},
	energy_source = {
		type = "electric",
		usage_priority = "secondary-output"
	},
	horizontal_animation = {
		filename = "__RExtended__/graphics/entity/steam-engine/r3/r3-h.png",
		width = 380,
		height = 320,
		frame_count = 15,
		line_length = 5,
		shift = {0.125,-0.28125},
		scale = 0.5,
		animation_speed=0.5,
	},
	vertical_animation = {
		filename = "__RExtended__/graphics/entity/steam-engine/r3/r3-v.png",
		width = 320,
		height = 320,
		frame_count = 15,
		line_length = 5,
		shift = {0.625, 0},
		scale = 0.5,
		animation_speed=0.5,			
	},
}
})

local recipe_sr2 = table.deepcopy(data.raw.recipe['steam-engine'])
recipe_sr2.name = "steam-engine-r2"
recipe_sr2.normal = {
	enabled = false,
	ingredients = {
		{"steam-engine",3},
		{"copper-gear-wheel-r1", 25},
		{"copper-plate", 7}
	},
	result = "steam-engine-r2"
}
recipe_sr2.expensive = {
	enabled = false,
	ingredients = {
		{"steam-engine",5},
		{"copper-gear-wheel-r1", 50},
		{"copper-plate", 45}
	},
	result = "steam-engine-r2"
}

local recipe_sr3 = table.deepcopy(data.raw.recipe['steam-engine'])
recipe_sr3.name = "steam-engine-r3"
recipe_sr3.normal = {
	enabled = false,
	ingredients = {
		{"steam-engine-r2", 2},
        {"iron-gear-wheel", 5},
        {"iron-plate", 5},
		{"steel-plate", 2}
	},
	result = "steam-engine-r3"
}
recipe_sr3.expensive = {
	enabled = false,
	ingredients = {
		{"steam-engine-r2", 3},
        {"iron-gear-wheel", 7},
        {"iron-plate", 25},
		{"steel-plate", 5}
	},
	result = "steam-engine-r3"
}

data:extend({recipe_sr2,recipe_sr3})

local item_sr2 = table.deepcopy(data.raw.item['steam-engine'])
item_sr2.name = "steam-engine-r2"
item_sr2.icon = "__RExtended__/graphics/icons/steam-engines/r2.png"
item_sr2.icon_size = 32
item_sr2.subgroup = "power-steam"
item_sr2.order = "c-a"
item_sr2.place_result = "steam-engine-r2"

local item_sr3 = table.deepcopy(data.raw.item['steam-engine'])
item_sr3.name = "steam-engine-r3"
item_sr3.icon = "__RExtended__/graphics/icons/steam-engines/r3.png"
item_sr3.icon_size = 32
item_sr3.subgroup = "power-steam"
item_sr3.order = "c-b"
item_sr3.place_result = "steam-engine-r3"

data:extend({item_sr2,item_sr3})