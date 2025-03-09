data:extend({
--RECIPE
{--Warehouse R1
	type = "recipe",
	name = "warehouse-r1",
	enabled = false,
	ingredients = {
		{type = "item", name = "steel-chest", amount = 5},
		{type = "item", name = "reinforced-iron-plate-r1", amount = 25},
		{type = "item", name = "reinforced-coal-plate-r1", amount = 25}
	},
	results = {{type="item", name="warehouse-r1", amount=1}}
},
--ITEM
{--Warehouse R1
	type = "item",
	name = "warehouse-r1",
	icon = "__RExtended__/graphics/icons/warehouse/warehouse-r1.png",
	icon_size = 32,
	subgroup = "machinery-lab",
	order = "g-b",
	place_result = "warehouse-r1",
	stack_size = 50
},
--IMAGE	
{--Warehouse R1
	type = "container",
	name = "warehouse-r1",
	icon = "__RExtended__/graphics/icons/warehouse/warehouse-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 1, result = "warehouse-r1"},
	max_health = 1000,
	corpse = "big-remnants",
	open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
	close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
	resistances = {
		{
			type = "fire",
			percent = 80
		},
		{
			type = "impact",
			percent = 30
		}
	},
	collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
	selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
	drawing_box = {{-3.0, -3.0}, {3.0, 3.0}},
	inventory_size = 5000,
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	picture = {
		filename = "__RExtended__/graphics/entity/warehouse/warehouse-r1.png",
		priority = "high",
		width = 260,
		height = 240,
		shift = {1.0, -0.3},
	},
	circuit_wire_max_distance = 7.5,
	circuit_wire_connection_point = {
		shadow =
		{
			red = {2.52, 0.65},
			green = {2.01, 0.65}
		},
		wire =
		{
			red = {2.22, 0.32},
			green = {1.71, 0.32}
		}
	},
}
})