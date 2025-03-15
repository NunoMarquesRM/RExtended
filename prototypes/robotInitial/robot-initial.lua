data:extend({
{--Controller Grid
	type = "equipment-grid",
	name = "controller-grid-r1",
	width = 6,
	height = 2,
	equipment_categories = {"armor"},
},
{--Controller Icon
	type = "armor",
	name = "initial-controller",
	icon = "__RExtended__/graphics/icons/robotInitial/initial-controller-icon.png",
	icon_size = 64,
	resistances = { },
	durability = 9999,
	subgroup = "initial-robot-r1",
	order = "w",
	stack_size = 1,
	equipment_grid = "controller-grid-r1",
	inventory_size_bonus = 0
},
--ITEM
{--Initial Roboport Icon
	type = "item",
	name = "initial-roboport",
	icon = "__RExtended__/graphics/icons/robotInitial/initial-roboport-icon.png",
	icon_size = 32,
	placed_as_equipment_result = "initial-roboport",
	subgroup = "initial-robot-r1",
	order = "w",
	stack_size = 1
},
{--Initial Robot
	type = "item",
	name = "initial-robot",
	icon = "__RExtended__/graphics/icons/robotInitial/initial-robot-icon.png",
	icon_size = 32,
	place_result = "initial-robot",
	subgroup = "initial-robot-r1",
	order = "w",
	stack_size = 10,
},
--ENTITY
{--Initial Roboport
	type = "roboport-equipment",
	name = "initial-roboport",
	take_result = "initial-roboport",
	sprite = {
		filename = "__RExtended__/graphics/icons/robotInitial/initial-roboport.png",
		width = 64,
		height = 64,
		priority = "medium"
	},
	shape = {
		width = 2,
		height = 2,
		type = "full"
	},
	energy_source = {
		type = "electric",
		buffer_capacity = "0.01MJ",
		input_flow_limit = "1KW",
		usage_priority = "secondary-input"
	},
	charging_energy = "0kW",

	robot_limit = 10,
	construction_radius = 15,
	spawn_and_station_height = 0.4,
	charge_approach_distance = 2.6,

	recharging_animation = {
		filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
		priority = "high",
		width = 37,
		height = 35,
		frame_count = 16,
		scale = 1.5,
		animation_speed = 0.5
	},
	recharging_light = {intensity = 0.4, size = 5},
	stationing_offset = {0, -0.6},
	charging_station_shift = {0, 0.5},
	charging_station_count = 0,
	charging_distance = 1,
	charging_threshold_distance = 5,
	categories = {"armor"}
},
{--Initial Robot
    type = "construction-robot",
    name = "initial-robot",
    icon = "__RExtended__/graphics/icons/robotInitial/initial-robot-icon.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "initial-robot"},
    resistances = { { type = "fire", percent = 85 }, {type = "physical", decrease = 10, percent = 40 }, },
    max_health = 250,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 1,
    speed = 0.1,
    transfer_distance = 0.5,
    max_energy = "0.5MJ",
    energy_per_tick = "0kJ",
    speed_multiplier_when_out_of_energy = 1,
    energy_per_move = "0kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.9,
    working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    idle = {
		filename = "__RExtended__/graphics/icons/robotInitial/initial-robot.png",
		priority = "high",
		line_length = 16,
		width = 80,
		height = 80,
		frame_count = 1,
		shift = {0, 0},
		scale = 0.5,
		direction_count = 16
	},
	in_motion = {
		filename = "__RExtended__/graphics/icons/robotInitial/initial-robot.png",
		priority = "high",
		line_length = 16,
		width = 80,
		height = 80,
		frame_count = 1,
		shift = {0, 0},
		scale = 0.5,
		direction_count = 16,
	},
	shadow_idle = {
		filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
		priority = "high",
		line_length = 16,
		width = 50,
		height = 24,
		frame_count = 1,
		shift = {1.09375, 0.59375},
		direction_count = 16
	},
	shadow_in_motion = {
		filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
		priority = "high",
		line_length = 16,
		width = 50,
		height = 24,
		frame_count = 1,
		shift = {1.09375, 0.59375},
		direction_count = 16
	},
	working = {
		filename = "__RExtended__/graphics/icons/robotInitial/initial-robot.png",
		priority = "high",
		line_length = 16,
		width = 80,
		height = 80,
		frame_count = 1,
		shift = {0, 0},
		scale = 0.5,
		direction_count = 16
	},
	shadow_working = {
		filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
		priority = "high",
		line_length = 16,
		width = 50,
		height = 24,
		frame_count = 1,
		shift = {1.09375, 0.59375},
		direction_count = 16
	},
	smoke = {
		filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
		width = 39,
		height = 32,
		frame_count = 19,
		line_length = 19,
		shift = {0.078125, -0.15625},
		animation_speed = 0.3,
	},
	sparks = {
		{
			filename = "__base__/graphics/entity/sparks/sparks-01.png",
			width = 39,
			height = 34,
			frame_count = 19,
			line_length = 19,
			shift = {-0.109375, 0.3125},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3,
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-02.png",
			width = 36,
			height = 32,
			frame_count = 19,
			line_length = 19,
			shift = {0.03125, 0.125},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3,
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-03.png",
			width = 42,
			height = 29,
			frame_count = 19,
			line_length = 19,
			shift = {-0.0625, 0.203125},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3,
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-04.png",
			width = 40,
			height = 35,
			frame_count = 19,
			line_length = 19,
			shift = {-0.0625, 0.234375},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3,
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-05.png",
			width = 39,
			height = 29,
			frame_count = 19,
			line_length = 19,
			shift = {-0.109375, 0.171875},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3,
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-06.png",
			width = 44,
			height = 36,
			frame_count = 19,
			line_length = 19,
			shift = {0.03125, 0.3125},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3,
		},
	},
	working_sound = {
      {
        filename = "__base__/sound/construction-robot-11.ogg", volume = 0.47
      },
      {
        filename = "__base__/sound/construction-robot-12.ogg", volume = 0.47
      },
      {
        filename = "__base__/sound/construction-robot-13.ogg", volume = 0.47
      },
      {
        filename = "__base__/sound/construction-robot-14.ogg", volume = 0.47
      },
      {
        filename = "__base__/sound/construction-robot-15.ogg", volume = 0.47
      },
      {
        filename = "__base__/sound/construction-robot-16.ogg", volume = 0.47
      },
      {
        filename = "__base__/sound/construction-robot-17.ogg", volume = 0.47
      },
      {
        filename = "__base__/sound/construction-robot-18.ogg", volume = 0.47
      },
      {
        filename = "__base__/sound/construction-robot-19.ogg", volume = 0.47
      },
      {
        filename = "__base__/sound/flying-robot-1.ogg", volume = 0.43
      },
      {
        filename = "__base__/sound/flying-robot-2.ogg", volume = 0.43
      },
      {
        filename = "__base__/sound/flying-robot-3.ogg", volume = 0.43
      },
      {
        filename = "__base__/sound/flying-robot-4.ogg", volume = 0.43
      },
      {
        filename = "__base__/sound/flying-robot-5.ogg", volume = 0.43
      }
    },
    max_sounds_per_type = 5,
    audible_distance_modifier = 1,
    probability = 1 / (10 * 60), -- average pause between the sound is 10 seconds
	cargo_centered = {0.0, 0.2},
	construction_vector = {0.30, 0.22},
}
})

data.raw.character.character.animations = {{
	armors =  {"initial-controller"},
	idle = {
		layers = {
			character_animations.level1.idle,
			character_animations.level1.idle_mask,
			character_animations.level1.idle_shadow,
		}
	},
	idle_with_gun = {
		layers = {
			character_animations.level1.idle_gun,
			character_animations.level1.idle_gun_mask,
			character_animations.level1.idle_gun_shadow,
		}
	},
	mining_with_hands = {
	  layers = {
			character_animations.level1.mining_hands,
			character_animations.level1.mining_hands_mask,
			character_animations.level1.mining_hands_shadow,
		}
	},
	mining_with_tool = {
		layers = {
			character_animations.level1.mining_tool,
			character_animations.level1.mining_tool_mask,
			character_animations.level1.mining_tool_shadow,
		}
	},
	running_with_gun = {
		layers = {
			character_animations.level1.running_gun,
			character_animations.level1.running_gun_mask,
			character_animations.level1.running_gun_shadow,
		}
	},
	running = {
		layers = {
			character_animations.level1.running,
			character_animations.level1.running_mask,
			character_animations.level1.running_shadow,
		}
	}
}}