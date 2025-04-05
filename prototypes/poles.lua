data:extend({
--ITEM
{--Small Pole
	type = "item",
	name = "small-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/small-electric-pole-r1.png",
	icon_size = 64, 
	icon_mipmaps = 4,
	subgroup = "power-poles",
	order = "a-a-b",
	place_result = "small-pole-r1",
	stack_size = 50
},
{--Medium Pole
	type = "item",
	name = "medium-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/medium-pole-r1.png",
	icon_size = 32,
	subgroup = "power-poles",
	order = "a-b-a",
	place_result = "medium-pole-r1",
	stack_size = 50
},
{--Long Pole
	type = "item",
	name = "long-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/long-pole-r1.png",
	icon_size = 32,
	subgroup = "power-poles",
	order = "a-c-a",
	place_result = "long-pole-r1",
	stack_size = 50
},
{--Substation
	type = "item",
	name = "substation-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/substation-pole-r1.png",
	icon_size = 32,
	subgroup = "power-poles",
	order = "a-d-a",
	place_result = "substation-pole-r1",
	stack_size = 50
},
{--Light Pole
	type = "item",
	name = "light-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/light-pole-r1.png",
	icon_size = 32,
	place_result = "light-pole-r1",
	subgroup = "power-poles",
	order = "a-a-a",
	stack_size = 25,
},
--RECIPE
{--Small Pole 1
	type = "recipe",
	name = "small-pole-r1-1",
	icon = "__RExtended__/graphics/icons/poles/small-electric-pole-r1.png",
	icon_size = 64, 
	icon_mipmaps = 4,
	energy_required = 1,
	enabled = true,
	ingredients = {
		{type = "item", name = "small-electric-pole", amount = 8}
	},
	order = "a-a-b",
	results = {{type="item", name="small-pole-r1", amount=2}}
},
{--Medium Pole
	type = "recipe",
	name = "medium-pole-r1",
	energy_required = 1.5,
	enabled = false,
	ingredients = {
		{type = "item", name = "steel-plate", amount = 2},
		{type = "item", name = "copper-plate", amount = 2},
		{type = "item", name = "medium-electric-pole", amount = 1}
	},
	results = {{type="item", name="medium-pole-r1", amount=2}}
},
{--Long Pole
	type = "recipe",
	name = "long-pole-r1",
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type = "item", name = "steel-plate", amount = 5},
		{type = "item", name = "iron-plate", amount = 5},
		{type = "item", name = "copper-plate", amount = 2},
		{type = "item", name = "big-electric-pole", amount = 2}
	},
	results = {{type="item", name="long-pole-r1", amount=1}}
},
{--Substation
	type = "recipe",
	name = "substation-pole-r1",
	energy_required = 1,
	enabled = false,
	ingredients =  {
		{type = "item", name = "iron-plate", amount = 5},
		{type = "item", name = "copper-gear-wheel-r1", amount = 5},
		{type = "item", name = "substation", amount = 3}
	},
	results = {{type="item", name="substation-pole-r1", amount=1}}
},
{--Light Pole
	type = "recipe",
	name = "light-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/light-pole-r1.png",
	icon_size = 32,
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type = "item", name = "iron-plate", amount = 5},
		{type = "item", name = "copper-gear-wheel-r1", amount = 2},
		{type = "item", name = "copper-cable", amount = 4}
	},
	results = {{type="item", name="light-pole-r1", amount=1}}
},
--ENTITY
{--Medium Pole
	type = "electric-pole",
	name = "medium-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/medium-pole-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "medium-pole-r1"},
	max_health = 140,
	corpse = "medium-remnants",
	resistances = {{type = "fire", percent = 100}},
	collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	drawing_box = {{-0.5, -1}, {0.5, 0.5}},
	maximum_wire_distance = 16,
	supply_area_distance = 8,
	vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	pictures = {
		filename = "__RExtended__/graphics/entity/poles/medium-pole-r1.png",
		priority = "high",
		width = 320,
		height = 320,
		direction_count = 1,
		shift = {1.53125, -1.90625},
		scale = 0.5
	},
	connection_points = {{
		shadow = {
			copper = {3.375, -0.4375},
			green = {3.375, -0.4375},
			red = {3.375, -0.4375}
		},
		wire = {
			copper = {0, -3.125},
			green = {-0.2,-3.125},
			red = {0.2,-3.125}
		}
	},},
	copper_wire_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
		priority = "high",
		width = 224,
		height = 46
	},
	green_wire_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
		priority = "high",
		width = 224,
		height = 46
	},
	radius_visualisation_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
		width = 12,
		height = 12,
		priority = "extra-high-no-scale"
	},
	red_wire_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
		priority = "high",
		width = 224,
		height = 46
	},
	wire_shadow_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
		priority = "high",
		width = 224,
		height = 46
	}
},
{--Long Pole
	type = "electric-pole",
	name = "long-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/long-pole-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "long-pole-r1"},
	max_health = 300,
	corpse = "medium-remnants",
	resistances = {{type = "fire", percent = 100}},
	collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
	selection_box = {{-1, -1}, {1, 1}},
	drawing_box = {{-1, -3}, {1, 0.5}},
	maximum_wire_distance = 60,
	supply_area_distance = 4,
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	pictures = {
		filename = "__RExtended__/graphics/entity/poles/long-pole-r1.png",
		priority = "high",
		width = 360,
		height = 360,
		direction_count = 1,
		shift = {1.71875, -1.84375},
		scale = 0.5
	},
	connection_points = {{
		shadow = {
			copper = {4.1875, 0},
			green = {4.1875, 0},
			red = {4.1875, 0}
		},
		wire = {
			copper = {0, -4.5},
			green = {-0.2,-4.5},
			red = {0.2,-4.5}
		}
	},},
	copper_wire_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
		priority = "high",
		width = 224,
		height = 46
	},
	green_wire_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
		priority = "high",
		width = 224,
		height = 46
	},
	radius_visualisation_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
		width = 12,
		height = 12,
		priority = "extra-high-no-scale"
	},
	red_wire_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
		priority = "high",
		width = 224,
		height = 46
	},
	wire_shadow_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
		priority = "high",
		width = 224,
		height = 46
	}
},
{--Substation
	type = "electric-pole",
	name = "substation-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/substation-pole-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "substation-pole-r1"},
	max_health = 330,
	corpse = "medium-remnants",
	resistances = {{type = "fire", percent = 100}},
	collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
	selection_box = {{-1, -1}, {1, 1}},
	drawing_box = {{-1, -3}, {1, 0.5}},
	maximum_wire_distance = 64,
	supply_area_distance = 64,
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	pictures = {
		filename = "__RExtended__/graphics/entity/poles/substation-pole-r1.png",
		priority = "high",
		width = 360,
		height = 360,
		direction_count = 1,
		shift = {1.71875, -1.84375},
		scale = 0.5
	},
	connection_points = {{
		shadow = {
			copper = {4.1875, 0},
			green = {4.1875, 0},
			red = {4.1875, 0}
		},
		wire = {
			copper = {0, -4.5},
			green = {-0.2,-4.5},
			red = {0.2,-4.5}
		}
	},},
	copper_wire_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
		priority = "high",
		width = 224,
		height = 46
	},
	green_wire_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
		priority = "high",
		width = 224,
		height = 46
	},
	radius_visualisation_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
		width = 12,
		height = 12,
		priority = "extra-high-no-scale"
	},
	red_wire_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
		priority = "high",
		width = 224,
		height = 46
	},
	wire_shadow_picture = {
		filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
		priority = "high",
		width = 224,
		height = 46
	}
},
{--Light Pole
	type = "lamp",
	name = "light-pole-r1",
	icon = "__RExtended__/graphics/icons/poles/light-pole-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.5, mining_time = 1.0, result = "light-pole-r1"},
	max_health = 150,
	corpse = "big-remnants",	
	energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.004, },
	energy_usage_per_tick = "40kW",		
	light = {intensity = 1.0, size = 250},
	circuit_wire_max_distance = 20,
	collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
	selection_box = {{-1, -1}, {1, 1}},
	picture_off = {
		filename = "__RExtended__/graphics/entity/poles/light-pole-r1-off.png",
		priority = "high",
		width = 360,
		height = 360,
		scale = 0.5,
		shift = {0.90625, -1.78125},
	},
	picture_on = {
		filename = "__RExtended__/graphics/entity/poles/light-pole-r1-on.png",
		priority = "high",
		width = 360,
		height = 360,
		scale = 0.5,
		shift = {0.90625, -1.78125},
	},
}
})

--Small Pole
local entity_smallPole = table.deepcopy(data.raw['electric-pole']['small-electric-pole'])
entity_smallPole.name = "small-pole-r1"
entity_smallPole.icon = "__RExtended__/graphics/icons/poles/small-electric-pole-r1.png"
entity_smallPole.minable = {mining_time = 0.1, result = "small-pole-r1"}
entity_smallPole.maximum_wire_distance = 9
entity_smallPole.supply_area_distance = 4
entity_smallPole.pictures = {
	layers = {
		{
			filename = "__RExtended__/graphics/entity/poles/small-pole-r1.png",
			priority = "extra-high",
			width = 72,
			height = 220,
			direction_count = 4,
			shift = util.by_pixel(1.5, -42.5),
			scale = 0.5
		},
		{
			filename = "__base__/graphics/entity/small-electric-pole/hr-small-electric-pole-shadow.png",
			priority = "extra-high",
			width = 256,
			height = 52,
			direction_count = 4,
			shift = util.by_pixel(51, 3),
			draw_as_shadow = true,
			scale = 0.5
		}
	}
}
data:extend({entity_smallPole})