data:extend({
--RECIPE
{--Coal (wood)-
	type = "recipe",
	name = "coal-r1",
	ingredients = {{type = "item", name = "wood", amount=4}},
	enabled = false,
	subgroup = "chemical-products-r1",
	order = "a-b-a",
	results = {{type="item", name="coal", amount=1}}
},
{--Enriched Coal-
	type = "recipe",
	name = "enriched-coal-r1",
	category = "crafting-with-fluid",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{type = "fluid", name = "diesel-fuel", amount = 50},
		{type = "item", name = "coal", amount = 2}
	},
	results = {{type="item", name="enriched-coal-r1", amount=1}},
	category = "red-enrichment-chamber",
},
{--Clean Coal R1-
	type = "recipe",
	name = "clean-coal-r1",
	energy_required = 2,
	enabled = false,
	ingredients = {
		{type = "item", name = "coal", amount = 2},
		{type = "fluid", name ="pressurized-water-r1" , amount = 20},
	},
	results = {{type="item", name="clean-coal-r1", amount=1}},
	category = "red-washer-chamber",
},
{--Clean Iron R1-
	type = "recipe",
	name = "clean-iron-r1",
	energy_required = 2,
	enabled = false,
	ingredients = {
		{type = "item", name = "iron-ore", amount = 1},
		{type = "fluid", name ="pressurized-water-r1" , amount = 20},
	},
	results = {{type="item", name="clean-iron-r1", amount=1}},
	category = "red-washer-chamber",
},
{--Clean Copper R1-
	type = "recipe",
	name = "clean-copper-r1",
	energy_required = 2,
	enabled = false,
	ingredients = {
		{type = "item", name = "copper-ore", amount = 1},
		{type = "fluid", name ="pressurized-water-r1" , amount = 20},
	},
	results = {{type="item", name="clean-copper-r1", amount=1}},
	category = "red-washer-chamber",
},
{--Cable R1-
	type = "recipe",
	name = "cable-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = {
		{type = "item", name = "copper-cable", amount = 2},
		{type = "item", name ="glue-r1", amount = 2},
	},
	results = {{type="item", name="cable-r1", amount=2}},
	category = "crafting",
},
{--Reinforced Iron Gear-
	type = "recipe",
	name = "reinforced-gear-iron-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = {
		{type="item", name="iron-plate", amount=1},
		{type="item", name="iron-gear-wheel", amount=2},
	},
	results = {{type="item", name="reinforced-gear-iron-r1", amount=1}},
	category = "crafting",
},
{--Reinforced Copper Gear-
	type = "recipe",
	name = "reinforced-gear-copper-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = {
		{type="item", name="copper-plate", amount=1},
		{type="item", name="copper-gear-wheel-r1", amount=2},
	},
	results = {{type="item", name="reinforced-gear-copper-r1", amount=1}},
	category = "crafting",
},
{--Glue (Recipe 1)-
	type = "recipe",
	name = "glue-r1-v1",
	energy_required = 2,
	enabled = false,
	ingredients = {
		{type="item", name="coal", amount=3},
		{type = "fluid", name ="water" , amount = 50},
	},
	results = {{type="item", name="glue-r1", amount=20}},
	category = "red-mixing",
	order = "a-a-a",
},
{--Glue (Recipe 2)-
	type = "recipe",
	name = "glue-r1-v2",
	energy_required = 2,
	enabled = false,
	ingredients = {
		{type="item", name="clean-coal-r1", amount=2},
		{type = "fluid", name ="water" , amount = 50},
	},
	results = {{type="item", name="glue-r1", amount=50}},
	category = "red-mixing",
	order = "a-a-b",
},
{--Clean Steel v1-
	type = "recipe",
	name = "clean-steel-r1v1",
	icon = "__RExtended__/graphics/icons/CR/clean-steel-r1.png",
	icon_size = 32,
	energy_required = 3,
	enabled = false,
	ingredients = {
		{type="item", name="iron-ore", amount=4},
		{type="item", name="coal", amount=1},
	},
	results = {{type="item", name="clean-steel-r1", amount=1}},
	category = "red-furnace",
	subgroup = "plate-products",
	order = "b-a-c",
},
{--Clean Steel v2-
	type = "recipe",
	name = "clean-steel-r1v2",
	icon = "__RExtended__/graphics/icons/CR/clean-steel-r1.png",
	icon_size = 32,
	energy_required = 3,
	enabled = false,
	ingredients = {
		{type="item", name="clean-iron-r1", amount=4},
		{type="item", name="clean-coal-r1", amount=1},
	},
	results = {{type="item", name="clean-steel-r1", amount=5}},
	category = "red-furnace",
	subgroup = "plate-products",
	order = "b-a-d",
},
{--Iron Plate v1-
	type = "recipe",
	name = "iron-plate-r1v1",
	icon = "__base__/graphics/icons/iron-plate.png",
	icon_size = 64,
	icon_mipmaps = 4,
	energy_required = 2,
	enabled = false,
	ingredients = {{type="item", name="clean-iron-r1", amount=1}},
	results = {{type="item", name="iron-plate", amount=3}},
	category = "smelting",
	subgroup = "plates",
	order = "c-a-a",
},
{--Iron Plate v2-
	type = "recipe",
	name = "iron-plate-r1v2",
	icon = "__base__/graphics/icons/iron-plate.png",
	icon_size = 64,
	icon_mipmaps = 4,
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type = "fluid", name ="pressurized-water-r1", amount = 30},
		{type = "fluid", name ="molten-iron-r1", amount = 30},
	},
	results = {{type="item", name="iron-plate", amount=5}},
	category = "red-casting-chamber",
	subgroup = "plates",
	order = "c-a-b",
},
{--Copper Plate v1-
	type = "recipe",
	name = "copper-plate-r1v1",
	icon = "__base__/graphics/icons/copper-plate.png",
	icon_size = 64,
	icon_mipmaps = 4,
	energy_required = 2,
	enabled = false,
	ingredients = {{type="item", name="clean-copper-r1", amount=1}},
	results = {{type="item", name="copper-plate", amount=3}},
	category = "smelting",
	subgroup = "plates",
	order = "c-a-d",
},
{--Copper Plate v2-
	type = "recipe",
	name = "copper-plate-r1v2",
	icon = "__base__/graphics/icons/copper-plate.png",
	icon_size = 64,
	icon_mipmaps = 4,
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type = "fluid", name ="pressurized-water-r1" , amount = 30},
		{type = "fluid", name ="molten-copper-r1" , amount = 30}
	},
	results = {{type="item", name="copper-plate", amount=5}},
	category = "red-casting-chamber",
	subgroup = "plates",
	order = "c-a-e",
},
{--Steel Plate v1-
	type = "recipe",
	name = "steel-plate-r1v1",
	icon = "__base__/graphics/icons/steel-plate.png",
	icon_size = 64, icon_mipmaps = 4,
	energy_required = 1,
	enabled = false,
	ingredients = {{type="item", name="clean-steel-r1", amount=1}},
	results = {{type="item", name="steel-plate", amount=2}},
	category = "red-furnace",
	subgroup = "plates",
	order = "c-a-f",
},
{--Steel Plate v2-
	type = "recipe",
	name = "steel-plate-r1v2",
	icon = "__base__/graphics/icons/steel-plate.png",
	icon_size = 64, icon_mipmaps = 4,
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type = "fluid", name ="pressurized-water-r1" , amount = 30},
		{type = "fluid", name ="molten-steel-r1" , amount = 30}
	},
	results = {{type="item", name="steel-plate", amount=5}},
	category = "red-casting-chamber",
	subgroup = "plates",
	order = "c-a-g",
},
{--Special Component-
	type = "recipe",
	name = "reinforced-component-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = {
		{type="item", name="iron-plate", amount=1},
		{type="item", name="copper-plate", amount=1},
	},
	results = {{type="item", name="reinforced-component-r1", amount=10}},
	category = "crafting"
},
{--Reinforced Iron Plate-
	type = "recipe",
	name = "reinforced-iron-plate-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = {
		{type="item", name="iron-plate", amount=1},
		{type="item", name="glue-r1", amount=2},
		{type="item", name="reinforced-component-r1", amount=2}
	},
	results = {{type="item", name="reinforced-iron-plate-r1",amount=1}},
	category = "crafting"
},
{--Reinforced Copper Plate-
	type = "recipe",
	name = "reinforced-copper-plate-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = {
		{type="item", name="copper-plate", amount=1},
		{type="item", name="glue-r1", amount=2},
		{type="item", name="reinforced-component-r1", amount=2}
	},
	results = {{type="item", name="reinforced-copper-plate-r1",amount=1}},
	category = "crafting"
},
{--Reinforced Coal Plate-
	type = "recipe",
	name = "reinforced-coal-plate-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = {
		{type="item", name="coal", amount=2},
		{type="item", name="iron-plate", amount=1},
		{type="item", name="reinforced-component-r1", amount=2}
	},
	results = {{type="item", name="reinforced-coal-plate-r1", amount=1}},
	category = "crafting"
},
{--Eletronic Component-
	type = "recipe",
	name = "electric-component-r1",
	energy_required = 2,
	enabled = false,
	ingredients = {
		{type="item", name="reinforced-iron-plate-r1", amount=2},
		{type="item", name="reinforced-copper-plate-r1", amount=2},
		{type="item", name="reinforced-coal-plate-r1", amount=2},
		{type="item", name="cable-r1", amount=6}
	},
	results = {{type="item", name="electric-component-r1", amount=1}},
	category = "crafting"
},
{--Plastic with Clean Coal-
	type = "recipe",
	name = "plastic-bar-r1",
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type="item", name="clean-coal-r1", amount=2},
		{type="fluid", name="petroleum-gas", amount=20}
	},
	results = {{type="item", name="plastic-bar", amount=4}},
	category = "chemistry",
	subgroup = "chemical-products-r1",
	order = "a-c-a",
},
--ITEM
{--Copper Gear Wheel R1
	type = "item",
	name = "copper-gear-wheel-r1",
	icon = "__RExtended__/graphics/icons/CR/copper-gear-wheel.png",
	icon_size = 32,
	subgroup = "intermediate-product",
	order = "c[copper-gear-wheel]",
	stack_size = 100
},
{--Enriched Coal
	type = "item",
	name = "enriched-coal-r1",
	icon = "__RExtended__/graphics/icons/CR/enrichedCoal-r1.png",
	icon_size = 32,
	fuel_category = "chemical",
	fuel_value = "72MJ",
	subgroup = "chemical-products-r1",
	order = "a-b-c",
	stack_size = 200
},
{--Clean Coal R1
	type = "item",
	name = "clean-coal-r1",
	icon = "__RExtended__/graphics/icons/CR/clean-coal-r1.png",
	icon_size = 32,
	fuel_category = "chemical",
	fuel_value = "36MJ",
	subgroup = "chemical-products-r1",
	order = "a-b-b",
	stack_size = 200
},
{--Clean Iron R1
	type = "item",
	name = "clean-iron-r1",
	icon = "__RExtended__/graphics/icons/CR/clean-iron-r1.png",
	icon_size = 32,
	subgroup = "plate-products",
	order = "b-a-a",
	stack_size = 100,
},
{--Clean Copper R1
	type = "item",
	name = "clean-copper-r1",
	icon = "__RExtended__/graphics/icons/CR/clean-copper-r1.png",
	icon_size = 32,
	subgroup = "plate-products",
	order = "b-a-b",
	stack_size = 100,
},
{--Clean Steel R1
	type = "item",
	name = "clean-steel-r1",
	icon = "__RExtended__/graphics/icons/CR/clean-steel-r1.png",
	icon_size = 32,
	subgroup = "plate-products",
	order = "b-a-c",
	stack_size = 100,
},
{--Cable R1
	type = "item",
	name = "cable-r1",
	icon = "__RExtended__/graphics/icons/CR/cable-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	order = "i-c-a",
	stack_size = 200,
},
{--Reinforced Iron Gear
	type = "item",
	name = "reinforced-gear-iron-r1",
	icon = "__RExtended__/graphics/icons/CR/reinforced-gear-iron-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	order = "i-b-e",
	stack_size = 200,
},
{--Reinforced Copper Gear
	type = "item",
	name = "reinforced-gear-copper-r1",
	icon = "__RExtended__/graphics/icons/CR/reinforced-gear-copper-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	order = "i-b-f",
	stack_size = 200,
},
{--Glue
	type = "item",
	name = "glue-r1",
	icon = "__RExtended__/graphics/icons/CR/glue-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	stack_size = 500,
},
{--Special Component
	type = "item",
	name = "reinforced-component-r1",
	icon = "__RExtended__/graphics/icons/CR/reinforced-component-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	order = "i-b-a",
	stack_size = 400,
},
{--Reinforced Iron Plate
	type = "item",
	name = "reinforced-iron-plate-r1",
	icon = "__RExtended__/graphics/icons/CR/reinforced-iron-plate-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	order = "i-b-b",
	stack_size = 200,
}, 
{--Reinforced Copper Plate
	type = "item",
	name = "reinforced-copper-plate-r1",
	icon = "__RExtended__/graphics/icons/CR/reinforced-copper-plate-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	order = "i-b-c",
	stack_size = 200,
},
{--Reinforced Coal Plate
	type = "item",
	name = "reinforced-coal-plate-r1",
	icon = "__RExtended__/graphics/icons/CR/reinforced-coal-plate-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	order = "i-b-d",
	stack_size = 200,
},
{--Eletronic Component
	type = "item",
	name = "electric-component-r1",
	icon = "__RExtended__/graphics/icons/CR/electric-component-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	order = "i-c-b",
	stack_size = 200,
}
})
--COMPONENTS AND RECIPES--BEGIN-------------------------
--RECIPE------------------------------------------------
--Copper Gear Wheel R1
--[[{--Copper Gear Wheel R1
	type = "recipe",
	name = "copper-gear-wheel-r1",
	icon = "__RExtended__/graphics/icons/CR/copper-gear-wheel.png",
	icon_size = 32,
	energy_required = 0.5,
	enabled = true,
	normal = {
		ingredients = {{type = "item", name = "copper-plate", amount=2}},
		results = {{type="item", name="copper-gear-wheel-r1", amount=1}}
	},
	expensive = {
		ingredients = {{type = "item", name = "copper-plate", amount=4}},
		results = {{type="item", name="copper-gear-wheel-r1", amount=1}}
	}
},]]--

local recipe_cgw_r1 = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_cgw_r1.name = "copper-gear-wheel-r1"
recipe_cgw_r1.icon = "__RExtended__/graphics/icons/CR/copper-gear-wheel.png"
recipe_cgw_r1.icon_size = 32
recipe_cgw_r1.energy_required = 0.5
recipe_cgw_r1.enabled = true
recipe_cgw_r1.normal = {
	ingredients = {{type = "item", name = "copper-plate", amount=2}},
	results = {{type="item", name="copper-gear-wheel-r1", amount=1}}
}
recipe_cgw_r1.expensive = {
	ingredients = {{type = "item", name = "copper-plate", amount=4}},
	results = {{type="item", name="copper-gear-wheel-r1", amount=1}}
}









data:extend({recipe_cgw_r1})
--COMPONENTS AND RECIPES--END---------------------------
--SOLAR PANELS--BEGIN-----------------------------------
--RECIPE------------------------------------------------
--Blue Quartz
local recipe_quartz = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_quartz.category = "crafting-with-fluid"
recipe_quartz.name = "blue-quartz-r1"
recipe_quartz.energy_required = 1
recipe_quartz.results = {{type="item", name="blue-quartz-r1", amount=1}}
recipe_quartz.ingredients = {
	{type = "item", name = "stone", amount = 4},
	{type = "fluid", name = "pressurized-water-r1", amount = 75}
}
recipe_quartz.enabled = false

--Crystalline Silicon
local recipe_silicon = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_silicon.name = "crystalline-silicon-r1"
recipe_silicon.energy_required = 10
recipe_silicon.results = {{type="item", name="crystalline-silicon-r1", amount=1}}
recipe_silicon.ingredients = {{type = "item", name = "blue-quartz-r1", amount = 2}}
recipe_silicon.enabled = false

local recipe_solarCell = table.deepcopy(data.raw.recipe['engine-unit'])
recipe_solarCell.name = "solar-cell"
recipe_solarCell.energy_required = 5
recipe_solarCell.results = {{type="item", name="solar-cell", amount=1}}
recipe_solarCell.ingredients = {
	{type = "item", name = "crystalline-silicon-r1", amount = 2},
	{type = "item", name = "electronic-circuit", amount = 2},
	{type = "item", name = "iron-gear-wheel", amount = 2}
}
recipe_solarCell.enabled = false

data:extend({recipe_quartz,recipe_silicon,recipe_solarCell})
--ITEM------------------------------------------------
--Blue Quartz
local item_quartz = table.deepcopy(data.raw.item['iron-plate'])
item_quartz.name = "blue-quartz-r1"
item_quartz.icon = "__RExtended__/graphics/icons/CR/blue-quartz-r1.png"
item_quartz.icon_size = 32
item_quartz.subgroup = "solar-products"
item_quartz.order = "j-a"
--Crystalline Silicon
local item_silicon = table.deepcopy(data.raw.item['iron-plate'])
item_silicon.name = "crystalline-silicon-r1"
item_silicon.icon = "__RExtended__/graphics/icons/CR/crystalline-silicon-r1.png"
item_silicon.icon_size = 32
item_silicon.subgroup = "solar-products"
item_silicon.order = "j-b"
--Solar Cell
local item_solarCell = table.deepcopy(data.raw.item['iron-stick'])
item_solarCell.name = "solar-cell"
item_solarCell.icon = "__RExtended__/graphics/icons/CR/solar-cell-r1.png"
item_solarCell.icon_size = 32
item_solarCell.subgroup = "solar-products"
item_solarCell.order = "j-c"

data:extend({item_quartz,item_silicon,item_solarCell})
--SOLAR PANELS--END-------------------------------------