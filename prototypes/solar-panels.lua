data:extend({
{--(RECIPE) Solar Panel Equipment R2
	type = "recipe",
	name = "solar-panel-equipment-r2",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{"solar-panel-equipment",1},
		{"solar-panel-r2", 1},
		{"advanced-circuit", 1}
	},
	result = "solar-panel-equipment-r2"
},
{--(ITEM) Solar Panel Equipment R2
	type = "item",
	name = "solar-panel-equipment-r2",
	icon = "__RExtended__/graphics/icons/solar-panels/solar-panel-equipment-r2.png",
	icon_size = 32,
	placed_as_equipment_result = "solar-panel-equipment-r2",
	subgroup = "equipment",
	order = "a[energy-source]-a[solar-panel]",
	stack_size = 10
},
{--(IMAGE) Solar Panel Equipment R2
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-r2",
    sprite = {
		filename = "__RExtended__/graphics/icons/solar-panels/solar-panel-equipment-r2.png",
		width = 32,
		height = 32,
		priority = "medium"
    },
    shape = {
		width = 1,
		height = 1,
		type = "full"
    },
    energy_source = {
		type = "electric",
		usage_priority = "primary-output"
    },
    power = "100kW",
    categories = {"armor"}
}
})

local recipe_r2 = table.deepcopy(data.raw.recipe['solar-panel'])
recipe_r2.name = "solar-panel-r2"
recipe_r2.ingredients = {
	{"solar-panel", 1},
	{"solar-cell", 10}
}
recipe_r2.result = "solar-panel-r2"

local recipe_r3 = table.deepcopy(data.raw.recipe['solar-panel'])
recipe_r3.name = "solar-panel-r3"
recipe_r3.ingredients = {
	{"solar-panel-r2", 1},
	{"advanced-circuit", 4},
	{"solar-cell", 4}
}
recipe_r3.result = "solar-panel-r3"

local recipe_r4 = table.deepcopy(data.raw.recipe['solar-panel'])
recipe_r4.name = "solar-panel-r4"
recipe_r4.ingredients = {
	{"solar-panel-r3",2},
	{"steel-plate",5},
	{"solar-cell",4}
}
recipe_r4.result = "solar-panel-r4"

local recipe_r5 = table.deepcopy(data.raw.recipe['solar-panel'])
recipe_r5.name = "solar-panel-r5"
recipe_r5.ingredients = {
	{"solar-panel-r4",2},
	{"steel-plate",5}
}
recipe_r5.result = "solar-panel-r5"

data:extend({recipe_r2,recipe_r3,recipe_r4,recipe_r5})

local item_r2 = table.deepcopy(data.raw.item['solar-panel'])
item_r2.name = "solar-panel-r2"
item_r2.icon = "__RExtended__/graphics/icons/solar-panels/solar-panel-r2.png"
item_r2.icon_size = 32
item_r2.subgroup = "power-solar"
item_r2.order = "g-a"
item_r2.place_result = "solar-panel-r2"
item_r2.stack_size = 50

local item_r3 = table.deepcopy(data.raw.item['solar-panel'])
item_r3.name = "solar-panel-r3"
item_r3.icon = "__RExtended__/graphics/icons/solar-panels/solar-panel-r3.png"
item_r3.icon_size = 32
item_r3.subgroup = "power-solar"
item_r3.order = "g-b"
item_r3.place_result = "solar-panel-r3"
item_r3.stack_size = 40

local item_r4 = table.deepcopy(data.raw.item['solar-panel'])
item_r4.name = "solar-panel-r4"
item_r4.icon = "__RExtended__/graphics/icons/solar-panels/solar-panel-r4.png"
item_r4.icon_size = 32
item_r4.subgroup = "power-solar"
item_r4.order = "g-c"
item_r4.place_result = "solar-panel-r4"
item_r4.stack_size = 30

local item_r5 = table.deepcopy(data.raw.item['solar-panel'])
item_r5.name = "solar-panel-r5"
item_r5.icon = "__RExtended__/graphics/icons/solar-panels/solar-panel-r5.png"
item_r5.icon_size = 32
item_r5.subgroup = "power-solar"
item_r5.order = "g-d"
item_r5.place_result = "solar-panel-r5"
item_r5.stack_size = 20

data:extend({item_r2,item_r3,item_r4,item_r5})

local r2 = table.deepcopy(data.raw['solar-panel']['solar-panel'])
r2.name = "solar-panel-r2"
r2.icon = "__RExtended__/graphics/icons/solar-panels/solar-panel-r2.png"
r2.icon_size = 32
r2.minable.result = "solar-panel-r2"
r2.max_health = 250
r2.picture.layers = {
{
	filename = "__RExtended__/graphics/entity/solar-panel/r2/r2.png",
	priority = "high",
	width = 116,
	height = 112,
	shift = util.by_pixel(-3, 3),
	hr_version = {
		filename = "__RExtended__/graphics/entity/solar-panel/r2/hr-r2.png",
		priority = "high",
		width = 230,
		height = 224,
		shift = util.by_pixel(-3, 3.5),
		scale = 0.5
	}
},
{
	filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
	priority = "high",
	width = 112,
	height = 90,
	shift = util.by_pixel(10, 6),
	draw_as_shadow = true,
	hr_version = {
		filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow.png",
		priority = "high",
		width = 220,
		height = 180,
		shift = util.by_pixel(9.5, 6),
		draw_as_shadow = true,
		scale = 0.5
	}
}}
r2.production = "600kW"

local r3 = table.deepcopy(data.raw['solar-panel']['solar-panel'])
r3.name = "solar-panel-r3"
r3.icon = "__RExtended__/graphics/icons/solar-panels/solar-panel-r3.png"
r3.icon_size = 32
r3.minable.result = "solar-panel-r3"
r3.max_health = 350
r3.picture.layers = {
{
	filename = "__RExtended__/graphics/entity/solar-panel/r3/r3.png",
	priority = "high",
	width = 116,
	height = 112,
	shift = util.by_pixel(-3, 3),
	hr_version = {
		filename = "__RExtended__/graphics/entity/solar-panel/r3/hr-r3.png",
		priority = "high",
		width = 230,
		height = 224,
		shift = util.by_pixel(-3, 3.5),
		scale = 0.5
	}
},
{
	filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
	priority = "high",
	width = 112,
	height = 90,
	shift = util.by_pixel(10, 6),
	draw_as_shadow = true,
	hr_version = {
		filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow.png",
		priority = "high",
		width = 220,
		height = 180,
		shift = util.by_pixel(9.5, 6),
		draw_as_shadow = true,
		scale = 0.5
	}
}}
r3.production = "6MW"

local r4 = table.deepcopy(data.raw['solar-panel']['solar-panel'])
r4.name = "solar-panel-r4"
r4.icon = "__RExtended__/graphics/icons/solar-panels/solar-panel-r4.png"
r4.icon_size = 32
r4.minable.result = "solar-panel-r4"
r4.max_health = 450
r4.picture.layers = {
{
	filename = "__RExtended__/graphics/entity/solar-panel/r4/r4.png",
	priority = "high",
	width = 116,
	height = 112,
	shift = util.by_pixel(-3, 3),
	hr_version = {
		filename = "__RExtended__/graphics/entity/solar-panel/r4/hr-r4.png",
		priority = "high",
		width = 230,
		height = 224,
		shift = util.by_pixel(-3, 3.5),
		scale = 0.5
	}
},
{
	filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
	priority = "high",
	width = 112,
	height = 90,
	shift = util.by_pixel(10, 6),
	draw_as_shadow = true,
	hr_version = {
		filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow.png",
		priority = "high",
		width = 220,
		height = 180,
		shift = util.by_pixel(9.5, 6),
		draw_as_shadow = true,
		scale = 0.5
	}
}}
r4.production = "36MW"

local r5 = table.deepcopy(data.raw['solar-panel']['solar-panel'])
r5.name = "solar-panel-r5"
r5.icon = "__RExtended__/graphics/icons/solar-panels/solar-panel-r5.png"
r5.icon_size = 32
r5.minable.result = "solar-panel-r5"
r5.max_health = 750
r5.picture.layers = {
{
	filename = "__RExtended__/graphics/entity/solar-panel/r5/r5.png",
	priority = "high",
	width = 116,
	height = 112,
	shift = util.by_pixel(-3, 3),
	hr_version = {
		filename = "__RExtended__/graphics/entity/solar-panel/r5/hr-r5.png",
		priority = "high",
		width = 230,
		height = 224,
		shift = util.by_pixel(-3, 3.5),
		scale = 0.5
	}
},
{
	filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
	priority = "high",
	width = 112,
	height = 90,
	shift = util.by_pixel(10, 6),
	draw_as_shadow = true,
	hr_version = {
		filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow.png",
		priority = "high",
		width = 220,
		height = 180,
		shift = util.by_pixel(9.5, 6),
		draw_as_shadow = true,
		scale = 0.5
	}
}}
r5.production = "150MW"

data:extend({r2,r3,r4,r5})