data:extend({
--ITEM
{--Storage Tank 1M
	type = "item",
	name = "big-storage-tank-r1",
	icon = "__RExtended__/graphics/icons/BigStorageTank/big-storage-tank-r1.png",
	icon_size = 32,
	subgroup = "machinery-storage",
	order = "e-a-a",
	place_result = "big-storage-tank-r1",
	stack_size = 25
},
{--Storage Tank 10M
	type = "item",
	name = "big-storage-tank-r2",
	icon = "__RExtended__/graphics/icons/BigStorageTank/big-storage-tank-r2.png",
	icon_size = 32,
	subgroup = "machinery-storage",
	order = "e-a-b",
	place_result = "big-storage-tank-r2",
	stack_size = 25
},
--RECIPE
{--Storage Tank 1M-
	type = "recipe",
	name = "big-storage-tank-r1",
	energy_required = 4,
	enabled = false,
	ingredients = {
		{"storage-tank", 5},
		{"pipe", 5},
		{"steel-plate", 5},
		{"glue-r1", 10},
	},
	result = "big-storage-tank-r1",
},
{--Storage Tank 10M-
	type = "recipe",
	name = "big-storage-tank-r2",
	energy_required = 4,
	enabled = false,
	ingredients = {
		{"big-storage-tank-r1", 5},
		{"pipe", 15},
		{"reinforced-copper-plate-r1", 20},
		{"reinforced-coal-plate-r1", 20},
		{"glue-r1", 15},
	},
	result = "big-storage-tank-r2",
},
--ENTITY
{--Storage Tank 1M
	type = "storage-tank",
	name = "big-storage-tank-r1",
	icon = "__RExtended__/graphics/icons/BigStorageTank/big-storage-tank-r1.png",
	icon_size = 32,
	flags = {"placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "big-storage-tank-r1"},
	max_health = 900,
	corpse = "medium-remnants",
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fluid_box = {
		base_area = 10000,
		pipe_covers = npipecovers(),
		pipe_connections = {
			{ position = {0, -2} },
			{ position = {2, 0} },
			{ position = {0, 2} },
			{ position = {-2, 0} }
		}
	},
	window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
	pictures = {
		picture = {
			sheets = {{
				filename = "__RExtended__/graphics/entity/BigStorageTank/big-storage-tank-r1.png",
				priority = "extra-high",
				frames = 1,
				width = 256,
				height = 256,
				scale = 0.5,
				shift = {0.4375, -0.375},
			},}
		},
		fluid_background = {
			filename = "__RExtended__/graphics/entity/BigStorageTank/empty.png",
			priority = "extra-high",
			width = 32,
			height = 32
		},
		window_background = {
			filename = "__RExtended__/graphics/entity/BigStorageTank/empty.png",
			priority = "extra-high",
			width = 32,
			height = 32,
		},
		flow_sprite = {
			filename = "__RExtended__/graphics/entity/BigStorageTank/empty.png",
			priority = "extra-high",
			width = 32,
			height = 32
		},
		gas_flow = {
			filename = "__RExtended__/graphics/entity/BigStorageTank/empty.png",
			priority = "extra-high",
			line_length = 1,
			width = 32,
			height = 32,
			frame_count = 1,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
		}
	},
	flow_length_in_ticks = 360,
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound = { 
		sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.8 },
		match_volume_to_activity = true,
		apparent_volume = 1.5,
		max_sounds_per_type = 3
	},
	circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
	circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
	circuit_wire_max_distance = default_circuit_wire_max_distance
},
{--Storage Tank 10M
	type = "storage-tank",
	name = "big-storage-tank-r2",
	icon = "__RExtended__/graphics/icons/BigStorageTank/big-storage-tank-r2.png",
	icon_size = 32,
	flags = {"placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "big-storage-tank-r2"},
	max_health = 1000,
	corpse = "medium-remnants",
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fluid_box = {
		base_area = 100000,
		pipe_covers = npipecovers(),
		pipe_connections = {
			{ position = {0, -2} },
			{ position = {2, 0} },
			{ position = {0, 2} },
			{ position = {-2, 0} }
		}
	},
	window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
	pictures = {
		picture = {
			sheets = {{
				filename = "__RExtended__/graphics/entity/BigStorageTank/big-storage-tank-r2.png",
				priority = "extra-high",
				frames = 1,
				width = 256,
				height = 256,
				scale = 0.5,
				shift = {0.4375, -0.375},
			},}
		},
		fluid_background = {
			filename = "__RExtended__/graphics/entity/BigStorageTank/empty.png",
			priority = "extra-high",
			width = 32,
			height = 32
		},
		window_background = {
			filename = "__RExtended__/graphics/entity/BigStorageTank/empty.png",
			priority = "extra-high",
			width = 32,
			height = 32,
		},
		flow_sprite = {
			filename = "__RExtended__/graphics/entity/BigStorageTank/empty.png",
			priority = "extra-high",
			width = 32,
			height = 32
		},
		gas_flow = {
			filename = "__RExtended__/graphics/entity/BigStorageTank/empty.png",
			priority = "extra-high",
			line_length = 1,
			width = 32,
			height = 32,
			frame_count = 1,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
		}
	},
	flow_length_in_ticks = 360,
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound = { 
		sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.8 },
		match_volume_to_activity = true,
		apparent_volume = 1.5,
		max_sounds_per_type = 3
	},
	circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
	circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
	circuit_wire_max_distance = default_circuit_wire_max_distance
},

})