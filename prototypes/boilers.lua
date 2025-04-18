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
	{type = "item", name = "boiler", amount = 2},
	{type = "item", name = "pipe", amount = 2},
	{type = "item", name = "copper-plate", amount = 5}
}
recipe_br2.results = {{type="item", name="boiler-r2", amount=1}}


local item_br2 = table.deepcopy(data.raw.item['boiler'])
item_br2.name = "boiler-r2"
item_br2.icon = "__RExtended__/graphics/icons/boiler/r2.png"
item_br2.icon_size = 32
item_br2.subgroup = "power-boilers"
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
	volume = 1000,
	base_area = 5,
	height = 2,
	base_level = -1,
	pipe_covers = npipecovers(),
	-- >> don't know what direction will be!
	pipe_connections = {
		{flow_direction = "input-output", direction = 0.2, position = {0, -1.19}},
		{flow_direction = "input-output", direction = 0.2, position = {0, 1.19}},
		{flow_direction = "input-output", direction = 0.2, position = {1.19, 0}}
	},
	production_type = "input-output",
	filter = "water"
}
br2.output_fluid_box = {
	volume = 1000,
	base_area = 5,
	height = 2,
	pipe_covers = npipecovers(),
	-- >> don't know what direction will be!
	pipe_connections = {{flow_direction = "output", direction = 0.2, position = {-1.19, 0}}},
	production_type = "output",
	filter = "steam"
}
br2.energy_consumption = "15MW"
br2.energy_source = {
	type = "burner",
	fuel_categories = {"chemical"},
	effectivity = 1,
	fuel_inventory_size = 1,
	emissions = 0.011,
	smoke = {{
		name = "smoke",
		north_position={-0.125, -1}, south_position={-0.125, -1},
		east_position={-0.125, -1}, west_position={-0.125, -1},
		height=1, deviation={0.1, 0.1},	frequency=25
	}}
}
br2.pictures = {
	north = {
		structure = {
			layers ={{
				filename = "__RExtended__/graphics/entity/boiler/r2.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.25, -0.1},
				scale = 0.5
			}}
		},
		fire = {
			filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
			priority = "extra-high",
			width = 269,
			height = 221,
			shift = util.by_pixel(-1.25, 5.25),
			scale = 0
		},
		fire_glow = {
			filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
			priority = "extra-high",
			width = 274,
			height = 164,
			scale = 0,
			shift = util.by_pixel(20.5, 9),
			draw_as_shadow = false
		}
	},
	east = {
		structure = {
			layers = {{
				filename = "__RExtended__/graphics/entity/boiler/r2.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.25, -0.1},
				scale = 0.5
			}}
		},
		fire = {
			filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
			priority = "extra-high",
			width = 269,
			height = 221,
			shift = util.by_pixel(-1.25, 5.25),
			scale = 0
		},
		fire_glow = {
			filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
			priority = "extra-high",
			width = 274,
			height = 164,
			scale = 0,
			shift = util.by_pixel(20.5, 9),
			draw_as_shadow = false
		}
	},
	south = {
		structure = {
			layers = {{
				filename = "__RExtended__/graphics/entity/boiler/r2.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.25, -0.1},
				scale = 0.5
			}}
		},
		fire = {
			filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
			priority = "extra-high",
			width = 269,
			height = 221,
			shift = util.by_pixel(-1.25, 5.25),
			scale = 0
		},
		fire_glow = {
			filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
			priority = "extra-high",
			width = 274,
			height = 164,
			scale = 0,
			shift = util.by_pixel(20.5, 9),
			draw_as_shadow = false
		}
	},
	west = {
		structure = {
			layers = {{
				filename = "__RExtended__/graphics/entity/boiler/r2.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.25, -0.1},
				scale = 0.5
			}}
		},
		fire = {
			filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
			priority = "extra-high",
			width = 269,
			height = 221,
			shift = util.by_pixel(-1.25, 5.25),
			scale = 0
		},
		fire_glow = {
			filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
			priority = "extra-high",
			width = 274,
			height = 164,
			scale = 0,
			shift = util.by_pixel(20.5, 9),
			draw_as_shadow = false
		}
	}
}
br2.burning_cooldown = 20

data:extend({recipe_br2,item_br2,br2})
------------------------------------------------------------
--- Boiler R3
local recipe_br3 = table.deepcopy(data.raw.recipe['boiler'])
recipe_br3.name = "boiler-r3"
recipe_br3.enabled = false
recipe_br3.ingredients = {
	{type = "item", name = "boiler-r2", amount = 2},
	{type = "item", name = "pipe", amount = 3},
	{type = "item", name = "steel-plate", amount = 3}
}
recipe_br3.results = {{type="item", name="boiler-r3", amount=1}}

local item_br3 = table.deepcopy(data.raw.item['boiler'])
item_br3.name = "boiler-r3"
item_br3.icon = "__RExtended__/graphics/icons/boiler/r3.png"
item_br3.icon_size = 64
item_br3.subgroup = "power-boilers"
item_br3.order = "b-b"
item_br3.place_result = "boiler-r3"

local br3 = table.deepcopy(data.raw['boiler']['boiler'])
br3.name = "boiler-r3"
br3.icon = "__RExtended__/graphics/icons/boiler/r3.png"
br3.icon_size = 64
br3.minable = {mining_time = 0.3, result = "boiler-r3"}
br3.max_health = 350
br3.collision_box = {{-1.25, -1.25}, {1.25, 1.25}}
br3.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
br3.mode = "output-to-separate-pipe"
br3.target_temperature = 200
br3.fluid_box = {
	volume = 1000,
	base_area = 7.55,
	height = 2,
	base_level = -2,
	-- >> don't know what direction will be!
	pipe_connections = {
		{flow_direction = "input-output", direction = 0.2, position = {1.25, 0}},
		{flow_direction = "input", direction = 0.2, position = {0, 1.25}},
		{flow_direction = "input-output", direction = 0.2, position = {-1.25, 0}}
	},
	production_type = "input-output",
	filter = "water"
}
br3.output_fluid_box = {
	volume = 1000,
	base_area = 3,
	height = 2,
	-- >> don't know what direction will be!
	pipe_connections = {{flow_direction = "output", direction = 0.2, position = {0, -1.25}},},
	production_type = "output",
	filter = "steam"
}
br3.energy_consumption = "60MW"
br3.energy_source = {
	type = "burner",
	fuel_categories = {"chemical"},
	effectivity = 1,
	fuel_inventory_size = 1,
	emissions = 0.011,
	smoke = {{
		name = "smoke",
		north_position = {-0.75, -2.25},
		deviation = {0.1, 0.1},
		frequency = 20.0
	}}
}
br3.pictures = {
	north = {
		structure = {
			layers ={{
				filename = "__RExtended__/graphics/entity/boiler/r3.png",
				priority = "extra-high", width = 256, height = 256, scale=0.5,
				shift = {0.375, -0.25}
			}}
		},
		fire = {
			filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
			priority = "extra-high",
			width = 269,
			height = 221,
			shift = util.by_pixel(-1.25, 5.25),
			scale = 0
		},
		fire_glow = {
			filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
			priority = "extra-high",
			width = 274,
			height = 164,
			scale = 0,
			shift = util.by_pixel(20.5, 9),
			draw_as_shadow = false
		}
	},
	east = {
		structure = {
			layers = {{
				filename = "__RExtended__/graphics/entity/boiler/r3.png",
				priority = "extra-high", width = 256, height = 256, scale=0.5,
				shift = {0.375, -0.25}
			}}
		},
		fire = {
			filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
			priority = "extra-high",
			width = 269,
			height = 221,
			shift = util.by_pixel(-1.25, 5.25),
			scale = 0
		},
		fire_glow = {
			filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
			priority = "extra-high",
			width = 274,
			height = 164,
			scale = 0,
			shift = util.by_pixel(20.5, 9),
			draw_as_shadow = false
		}
	},
	south = {
		structure = {
			layers = {{
				filename = "__RExtended__/graphics/entity/boiler/r3.png",
				priority = "extra-high", width = 256, height = 256, scale=0.5,
				shift = {0.375, -0.25}
			}}
		},
		fire = {
			filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
			priority = "extra-high",
			width = 269,
			height = 221,
			shift = util.by_pixel(-1.25, 5.25),
			scale = 0
		},
		fire_glow = {
			filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
			priority = "extra-high",
			width = 274,
			height = 164,
			scale = 0,
			shift = util.by_pixel(20.5, 9),
			draw_as_shadow = false
		}
	},
	west = {
		structure = {
			layers = {{
				filename = "__RExtended__/graphics/entity/boiler/r3.png",
				priority = "extra-high", width = 256, height = 256, scale=0.5,
				shift = {0.375, -0.25}
			}}
		},
		fire = {
			filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
			priority = "extra-high",
			width = 269,
			height = 221,
			shift = util.by_pixel(-1.25, 5.25),
			scale = 0
		},
		fire_glow = {
			filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
			priority = "extra-high",
			width = 274,
			height = 164,
			scale = 0,
			shift = util.by_pixel(20.5, 9),
			draw_as_shadow = false
		}
	}
}
br3.burning_cooldown = 20

data:extend({recipe_br3,item_br3,br3})
------------------------------------------------------------
--Oil Steam Boiler
data:extend({
{--Item
	type = "item",
	name = "oil-steam-boiler",
	icon = "__RExtended__/graphics/icons/boiler/oil-steam-boiler.png",
	icon_size = 32,
	subgroup = "power-boilers",
	order = "b-c",
	place_result = "oil-steam-boiler",
	stack_size = 25
},
{--Recipe
	type = "recipe",
	name = "oil-steam-boiler",
	enabled = false,
	energy_required = 10,
	ingredients = {
		{type = "item", name = "copper-gear-wheel-r1", amount = 7},
		{type = "item", name = "pipe", amount = 10},
		{type = "item", name = "steel-plate", amount = 10}
	},
	results = {{type="item", name="oil-steam-boiler", amount=1}}
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
	vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
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
		volume = 1000,
		base_area = 1,
		height = 2,
		base_level = -1,
		--pipe_covers = pipecoverspictures(),
		-- >> don't know what direction will be!
		pipe_connections = {{flow_direction="input", direction = 0.2, position = {1, -1.1} }},
		production_type = "input",
		filter = "water"
	},
	output_fluid_box = {
		volume = 1000,
		base_area = 1,
		height = 2,
		base_level = 1,
		--pipe_covers = pipecoverspictures(),
		-- >> don't know what direction will be!
		pipe_connections = {{flow_direction = "output", direction = 0.2, position = {0, 1.1}}},
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
			volume = 1000,
			base_area = 1,
			height = 2,
			base_level = -1,
			--pipe_covers = pipecoverspictures(),
			-- >> don't know what direction will be!
			pipe_connections = {{flow_direction = "input", direction = 0.2, position = {-1, -1.1}}},
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

