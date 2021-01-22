local item_stone_r2 = table.deepcopy(data.raw.item['stone-furnace'])
item_stone_r2.name = "electric-stone-furnace"
item_stone_r2.icon = "__RExtended__/graphics/icons/furnaces/stone-furnace-r2.png"
item_stone_r2.icon_size = 32
item_stone_r2.subgroup = "machinery-formation"
item_stone_r2.order = "d-c-a"
item_stone_r2.place_result = "electric-stone-furnace"

local recipe_stone_r2 = table.deepcopy(data.raw.recipe['stone-furnace'])
recipe_stone_r2.name = "electric-stone-furnace"
recipe_stone_r2.ingredients = {
	{"stone-furnace", 2},
	{"electronic-circuit", 2}
}
recipe_stone_r2.enabled = false
recipe_stone_r2.result = "electric-stone-furnace"

local stone_r2 = table.deepcopy(data.raw['furnace']['stone-furnace'])
stone_r2.name = "electric-stone-furnace"
stone_r2.icon = "__RExtended__/graphics/icons/furnaces/stone-furnace-r2.png"
stone_r2.icon_size = 32
stone_r2.minable.result = "electric-stone-furnace"
stone_r2.fast_replaceable_group = "furnace"
stone_r2.max_health = 250
stone_r2.crafting_speed = 2
stone_r2.energy_usage = "250kW"
stone_r2.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions = 0.005
}
stone_r2.animation = {
	filename = "__RExtended__/graphics/entity/furnaces/electric-stone-furnace/r2.png",
	priority = "extra-high",
	width = 192,
	height = 128,
	frame_count = 1,
	shift = {0.46875, 0 },
	scale = 0.5,
}
stone_r2.working_visualisations = {{
	north_position = { 0.078125, 0.5234375},
	west_position = { 0.078125, 0.5234375},
	south_position = { 0.078125, 0.5234375},
	east_position = { 0.078125, 0.5234375},
	animation = {
		filename = "__RExtended__/graphics/entity/furnaces/electric-stone-furnace/r2-fire.png",
		width = 23,
		height = 38,
		frame_count = 12,
		shift = {-0.125, 0.05 }
	}
},}

data:extend({item_stone_r2,recipe_stone_r2,stone_r2})

local item_steel_r2 = table.deepcopy(data.raw.item['steel-furnace'])
item_steel_r2.name = "electric-steel-furnace"
item_steel_r2.icon = "__RExtended__/graphics/icons/furnaces/steel-furnace-r2.png"
item_steel_r2.icon_size = 32
item_steel_r2.subgroup = "machinery-formation"
item_steel_r2.order = "d-d-a"
item_steel_r2.place_result = "electric-steel-furnace"

local recipe_steel_r2 = table.deepcopy(data.raw.recipe['steel-furnace'])
recipe_steel_r2.name = "electric-steel-furnace"
recipe_steel_r2.ingredients = {
	{"steel-furnace", 2},
	{"electronic-circuit", 5},
	{"copper-gear-wheel-r1", 1}
}
recipe_steel_r2.enabled = false
recipe_steel_r2.result = "electric-steel-furnace"

local steel_r2 = table.deepcopy(data.raw['furnace']['steel-furnace'])
steel_r2.name = "electric-steel-furnace"
steel_r2.icon = "__RExtended__/graphics/icons/furnaces/steel-furnace-r2.png"
steel_r2.icon_size = 32
steel_r2.minable.result = "electric-steel-furnace"
steel_r2.max_health = 400
steel_r2.crafting_speed = 4
steel_r2.energy_usage = "350kW"
steel_r2.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions = 0.005
}
steel_r2.animation = {
	filename = "__RExtended__/graphics/entity/furnaces/electric-steel-furnace/r2.png",
	priority = "extra-high",
	width = 192,
	height = 192,
	frame_count = 8,
	shift = {0.5, -0.375},
	scale = 0.5
}
steel_r2.working_visualisations = {
{
	north_position = { 0.078125, 0.5234375},
	west_position = { 0.078125, 0.5234375},
	south_position = { 0.078125, 0.5234375},
	east_position = { 0.078125, 0.5234375},
	animation = {
		filename = "__RExtended__/graphics/entity/furnaces/electric-steel-furnace/r2-fire.png",
		priority = "extra-high",
		width = 8,
		height = 11,
		frame_count = 12,
		shift = {-0.1, 0.25}
	}
},}

data:extend({item_steel_r2,recipe_steel_r2,steel_r2})
