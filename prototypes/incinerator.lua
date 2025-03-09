data:extend({
{type = "recipe-category",name = "incineration"},
{type = "recipe-category",name = "fuel-incineration"},
{type = "recipe-category",name = "flaring"},
--ITEM
{--Incinerator
	type = "item",
	name = "incinerator-r1",
	icon = "__RExtended__/graphics/icons/incinerator/incinerator.png",
	icon_size = 32,
	subgroup = "machinery-storage",
	order = "e-c",
	place_result = "incinerator-r1",
	stack_size = 50
},
{--Incinerator Liquid
	type = "item",
	name = "incinerator-liquid-r1",
	icon = "__RExtended__/graphics/icons/incinerator/incinerator-liquid-r1.png",
	icon_size = 32,
	subgroup = "machinery-storage",
	order = "e-d",
	place_result = "incinerator-liquid-r1",
	stack_size = 50
},
--RECIPE
{--Incinerator
	type = "recipe",
	name = "incinerator-r1",
	energy_required = 2,
	enabled = false,
	ingredients = {
		{type = "item", name = "electric-stone-furnace", amount = 1},
		{type = "item", name = "iron-gear-wheel", amount = 5},
		{type = "item", name = "electronic-circuit", amount = 5},
		{type = "item", name = "pipe", amount = 5}
	},
	results = {{type="item", name="incinerator-r1", amount=1}}
},
{--Incinerator Liquid
	type = "recipe",
	name = "incinerator-liquid-r1",
	energy_required = 2,
	enabled = false,
	ingredients = {
		{type = "item", name = "electric-stone-furnace", amount = 1},
		{type = "item", name = "iron-gear-wheel", amount = 5},
		{type = "item", name = "electronic-circuit", amount = 5},
		{type = "item", name = "pipe", amount = 5}
	},
	results = {{type="item", name="incinerator-r1", amount=1}}
},
--ENTITY
{--Incinerator
	type = "furnace",
	name = "incinerator-r1",
	icon = "__RExtended__/graphics/icons/incinerator/incinerator.png",
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
	minable = {mining_time = 1, result = "incinerator-r1"},
	max_health = 250,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	crafting_categories = {"incineration", "fuel-incineration"},
	crafting_speed = 2,
	energy_source = {
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.05,
		drain = "0W"
	},
	energy_usage = "1MW",
	ingredient_count = 1,
	source_inventory_size = 1,
	result_inventory_size = 0,
	animation = {			
		filename = "__RExtended__/graphics/entity/incinerator/incinerator.png",
		width = 160,
		height = 160,
		shift = {0.15, -0.0},
		frame_count = 16,
		line_length = 4,
		animation_speed = 0.25,
	},
	vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound = {
		sound = { filename = "__base__/sound/oil-refinery.ogg" },
		idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
		apparent_volume = 2.5,
	},
},
{--Incinerator Liquid
	type = "furnace",
	name = "incinerator-liquid-r1",
	icon = "__RExtended__/graphics/icons/incinerator/incinerator-liquid-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
	minable = {mining_time = 1, result = "incinerator-liquid-r1"},
	max_health = 250,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	crafting_categories = {"flaring"},
	crafting_speed = 20,
	energy_source = {
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 8
	},
	energy_usage = "600kW",
	ingredient_count = 1,
	source_inventory_size = 0,
	result_inventory_size = 0,
	animation = {
		filename = "__RExtended__/graphics/entity/incinerator/incinerator-liquid-r1.png",
		priority="high",
		width = 160,
		height = 160,
		frame_count = 1,
		shift = {1.5, -1.59375}
	},
	vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound = {
		sound = { filename = "__base__/sound/oil-refinery.ogg" },
		idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
		apparent_volume = 2.5,
	},
	fluid_boxes = {{
		production_type = "input",
		pipe_picture = {
			north = {
				filename = "__core__/graphics/empty.png",
				priority = "extra-high",
				width = 1,
				height = 1
			},
			east = {
				filename = "__core__/graphics/empty.png",
				priority = "extra-high",
				width = 1,
				height = 1
			},
			south = {
				filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				frame_count = 1,
				shift = util.by_pixel(0, -32),
				hr_version = {
					filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					frame_count = 1,
					shift = util.by_pixel(0, -32),
					scale = 0.5
				}
			},
			west = {
				filename = "__core__/graphics/empty.png",
				priority = "extra-high",
				width = 1,
				height = 1
			}
		},
		pipe_covers = pipecoverspictures(),
		base_area = 1,
		base_level = -1,
		pipe_connections ={{ position = {0, -1} }}
	}},
	pipe_covers = pipecoverspictures()
}
})