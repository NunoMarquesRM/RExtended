data:extend({
--ITEM
{--Mining Drill R2
	type = "item",
	name = "mining-drill-r2",
	icon = "__RExtended__/graphics/icons/mining-drill/mining-drill-r2.png",
	icon_size = 32,
	subgroup = "machinery-drill",
	order = "f-a",
	place_result = "mining-drill-r2",
	stack_size = 50
},
{--Mining Drill R3
	type = "item",
	name = "mining-drill-r3",
	icon = "__RExtended__/graphics/icons/mining-drill/mining-drill-r3.png",
	icon_size = 32,
	subgroup = "machinery-drill",
	order = "f-b",
	place_result = "mining-drill-r3",
	stack_size = 50
},
--RECIPE
{--Mining Drill R2
    type = "recipe",
    name = "mining-drill-r2",
	normal = {
		enabled = false,
		energy_required = 2,
		ingredients = {
			{"electric-mining-drill", 1},
			{"copper-gear-wheel-r1", 5},
			{"iron-plate", 10}
		},
		result = "mining-drill-r2",
	},
	expensive = {
		enabled = false,
		energy_required = 2,
		ingredients = {
			{"electric-mining-drill", 2},
			{"copper-gear-wheel-r1", 10},
			{"iron-plate", 15}
		},
		result = "mining-drill-r2",
	}
},
{--Mining Drill R3
    type = "recipe",
    name = "mining-drill-r3",
	normal = {
		enabled = false,
		energy_required = 2,
		ingredients = {
			{"mining-drill-r2", 1},
			{"cable-r1", 5},
			{"reinforced-component-r1", 10},
			{"electronic-circuit", 1}
		},
		result = "mining-drill-r3",
	},
	expensive = {
		enabled = false,
		energy_required = 2,
		ingredients = {
			{"mining-drill-r2", 3},
			{"cable-r1", 10},
			{"reinforced-component-r1", 20},
			{"electronic-circuit", 2}
		},
		result = "mining-drill-r3",
	}
},
{--Mining Drill R2
    type = "mining-drill",
    name = "mining-drill-r2",
    icon = "__RExtended__/graphics/icons/mining-drill/mining-drill-r2.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    resource_categories = {"basic-solid"},
    minable = {mining_time = 1, result = "mining-drill-r2"},
    max_health = 320,
    corpse = "medium-remnants",
	resistances = {{type = "fire",percent = 80}},
    collision_box = {{-2.2, -2.2}, {2.3, 2.2}},
	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    mining_speed = 4,
	input_fluid_box = {
		production_type = "input-output",
		base_area = 1,
		pipe_connections = {{ position = {0, 3} },}
	},
    working_sound = {sound = {filename = "__base__/sound/burner-mining-drill.ogg", volume = 0.8},},
    energy_source = {
		type = "electric",
		emissions = 0.04,
		usage_priority = "secondary-input"
    },
    energy_usage = "220kW",
    mining_power = 1,
	module_specification ={module_slots = 2,},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animations = {
		north = {
			priority = "extra-high",
			filename = "__RExtended__/graphics/entity/mining-drill/minidrill-r2-n.png",
			width = 360,
			height = 360,
			frame_count = 16,
			line_length = 4,
			shift = {0.1875, 0.03125},
			animation_speed = 0.5,
			run_mode = "forward-then-backward",
			scale = 0.5,
		},
		east = {
			priority = "extra-high",
			filename = "__RExtended__/graphics/entity/mining-drill/minidrill-r2-e.png",
			width = 360,
			height = 360,
			frame_count = 16,
			line_length = 4,
			shift = {0.1875, 0.03125},
			animation_speed = 0.5,
			run_mode = "forward-then-backward",
			scale = 0.5,
		},
		south = {
			priority = "extra-high",
			filename = "__RExtended__/graphics/entity/mining-drill/minidrill-r2-s.png",
			width = 360,
			height = 360,
			frame_count = 16,
			line_length = 4,
			shift = {0.1875, 0.03125},
			animation_speed = 0.5,
			run_mode = "forward-then-backward",
			scale = 0.5,
		},
		west = {
			priority = "extra-high",
			filename = "__RExtended__/graphics/entity/mining-drill/minidrill-r2-w.png",
			width = 360,
			height = 360,
			frame_count = 16,
			line_length = 4,
			shift = {0.1875, 0.03125},
			animation_speed = 0.5,
			run_mode = "forward-then-backward",
			scale = 0.5,
		},
    },
    resource_searching_radius = 3,
	vector_to_place_result = {0, -2.75},
	radius_visualisation_picture = {
		filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
		width = 12,
		height = 12
    },
},
{--Mining Drill R3
    type = "mining-drill",
    name = "mining-drill-r3",
    icon = "__RExtended__/graphics/icons/mining-drill/mining-drill-r3.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    resource_categories = {"basic-solid"},
    minable = {mining_time = 1, result = "mining-drill-r3"},
    max_health = 320,
    corpse = "medium-remnants",
	resistances = {{type = "fire",percent = 80}},
    collision_box = {{-2.2, -2.2}, {2.3, 2.2}},
	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    mining_speed = 15,
	input_fluid_box = {
		production_type = "input-output",
		base_area = 1,
		pipe_connections = {{ position = {0, 3} },}
	},
    working_sound = {sound = {filename = "__base__/sound/burner-mining-drill.ogg", volume = 0.8},},
    energy_source = {
		type = "electric",
		emissions = 0.04,
		usage_priority = "secondary-input"
    },
    energy_usage = "750kW",
    mining_power = 1,
	module_specification ={module_slots = 2,},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animations = {
		north = {
			priority = "extra-high",
			filename = "__RExtended__/graphics/entity/mining-drill/minidrill-r3-n.png",
			width = 360,
			height = 360,
			frame_count = 16,
			line_length = 4,
			shift = {0.1875, 0.03125},
			animation_speed = 0.5,
			run_mode = "forward-then-backward",
			scale = 0.5,
		},
		east = {
			priority = "extra-high",
			filename = "__RExtended__/graphics/entity/mining-drill/minidrill-r3-e.png",
			width = 360,
			height = 360,
			frame_count = 16,
			line_length = 4,
			shift = {0.1875, 0.03125},
			animation_speed = 0.5,
			run_mode = "forward-then-backward",
			scale = 0.5,
		},
		south = {
			priority = "extra-high",
			filename = "__RExtended__/graphics/entity/mining-drill/minidrill-r3-s.png",
			width = 360,
			height = 360,
			frame_count = 16,
			line_length = 4,
			shift = {0.1875, 0.03125},
			animation_speed = 0.5,
			run_mode = "forward-then-backward",
			scale = 0.5,
		},
		west = {
			priority = "extra-high",
			filename = "__RExtended__/graphics/entity/mining-drill/minidrill-r3-w.png",
			width = 360,
			height = 360,
			frame_count = 16,
			line_length = 4,
			shift = {0.1875, 0.03125},
			animation_speed = 0.5,
			run_mode = "forward-then-backward",
			scale = 0.5,
		},
    },
    resource_searching_radius = 3,
	vector_to_place_result = {0, -2.75},
	radius_visualisation_picture = {
		filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
		width = 12,
		height = 12
    },
}
})