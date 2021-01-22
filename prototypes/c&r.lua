data:extend({
--RECIPE
	{--Copper Gear Wheel R1
		type = "recipe",
		name = "copper-gear-wheel-r1",
		normal = {
			energy_required = 0.5,
			enabled = true,
			ingredients = {{"copper-plate", 2}},
			result = "copper-gear-wheel-r1"
		},
		expensive = {
			energy_required = 0.5,
			enabled = true,
			ingredients = {{"copper-plate", 4}},
			result = "copper-gear-wheel-r1"
		}
	},
{--Coal (wood)-
	type = "recipe",
	name = "coal-r1",
	ingredients = {{"wood", 4}},
	enabled = false,
	subgroup = "chemical-products-r1",
	order = "a-a-a",
	result = "coal",
},
{--Enriched Coal-
	type = "recipe",
	name = "enriched-coal-r1",
	category = "crafting-with-fluid",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{type = "fluid", name = "diesel-fuel", amount = 50},
		{"coal",2}
	},
	result = "enriched-coal-r1",
	category = "red-enrichment-chamber",
},
{--Clean Coal R1-
	type = "recipe",
	name = "clean-coal-r1",
	energy_required = 2,
	enabled = false,
	ingredients = 
	{
		{"coal", 2},
		{type = "fluid", name ="pressurized-water-r1" , amount = 20},
	},		
	result = "clean-coal-r1",
	result_count = 1,
	category = "red-washer-chamber",
},
{--Clean Iron R1-
	type = "recipe",
	name = "clean-iron-r1",
	energy_required = 2,
	enabled = false,
	ingredients = 
	{
		{"iron-ore", 1},
		{type = "fluid", name ="pressurized-water-r1" , amount = 20},
	},		
	result = "clean-iron-r1",
	result_count = 1,
	category = "red-washer-chamber",
},
{--Clean Copper R1-
	type = "recipe",
	name = "clean-copper-r1",				
	energy_required = 2,
	enabled = false,
	ingredients = 
	{
		{"copper-ore", 1},
		{type = "fluid", name ="pressurized-water-r1" , amount = 20},	
	},		
	result = "clean-copper-r1",
	result_count = 1,
	category = "red-washer-chamber",
},
{--Cable R1-
	type = "recipe",
	name = "cable-r1",				
	energy_required = 0.5,
	enabled = false,
	ingredients = {
		{type="item", name="copper-cable", amount= 2},
		{type = "item", name ="glue-r1", amount = 2},
	},		
	result = "cable-r1",
	result_count = 2,
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
	result = "reinforced-gear-iron-r1",
	result_count = 1,
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
	result = "reinforced-gear-copper-r1",
	result_count = 1,
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
	result = "glue-r1",
	result_count = 20,
	category = "red-mixing",

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
	result = "glue-r1",
	result_count = 50,
	category = "red-mixing",
},
{--Clean Steel v1-
	type = "recipe",
	name = "clean-steel-r1v1",
	icon = "__RExtended__/graphics/icons/C&R/clean-steel-r1.png",
	icon_size = 32,
	energy_required = 3,
	enabled = false,
	ingredients = {
		{type="item", name="iron-ore", amount=4},
		{type="item", name="coal", amount=1},
	},		
	result = "clean-steel-r1",
	result_count = 1,
	category = "red-furnace",
	subgroup = "plate-products",
	order = "b-c-a",
},
{--Clean Steel v2-
	type = "recipe",
	name = "clean-steel-r1v2",
	icon = "__RExtended__/graphics/icons/C&R/clean-steel-r1.png",
	icon_size = 32,	
	energy_required = 3,
	enabled = false,
	ingredients = {
		{type="item", name="clean-iron-r1", amount=4},
		{type="item", name="clean-coal-r1", amount=1},
	},		
	result = "clean-steel-r1",
	result_count = 5,
	category = "red-furnace",
	subgroup = "plate-products",
	order = "b-c-b",
},
{--Iron Plate v1-
	type = "recipe",
	name = "iron-plate-r1v1",
	icon = "__base__/graphics/icons/iron-plate.png",
	icon_size = 64, icon_mipmaps = 4,
	energy_required = 2,
	enabled = false,
	ingredients = {{type="item", name="clean-iron-r1", amount=1},},		
	result = "iron-plate",
	result_count = 3,
	category = "smelting",
	subgroup = "plate-products",
	order = "b-a-b",
},
{--Iron Plate v2-
	type = "recipe",
	name = "iron-plate-r1v2",	
	icon = "__base__/graphics/icons/iron-plate.png",	
	icon_size = 64, icon_mipmaps = 4,
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type = "fluid", name ="pressurized-water-r1", amount = 30},
		{type = "fluid", name ="molten-iron-r1", amount = 30},
	},		
	result = "iron-plate",
	result_count = 5,
	category = "red-casting-chamber",
	subgroup = "plate-products",
	order = "b-a-d",
},
{--Copper Plate v1-
	type = "recipe",
	name = "copper-plate-r1v1",
	icon = "__base__/graphics/icons/copper-plate.png",
	icon_size = 64, icon_mipmaps = 4,
	energy_required = 2,
	enabled = false,
	ingredients = {{type="item", name="clean-copper-r1", amount=1},},		
	result = "copper-plate",
	result_count = 3,
	category = "smelting",
	subgroup = "plate-products",
	order = "b-b-b",
},
{--Copper Plate v2-
	type = "recipe",
	name = "copper-plate-r1v2",				
	icon = "__base__/graphics/icons/copper-plate.png",
	icon_size = 64, icon_mipmaps = 4,
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type = "fluid", name ="pressurized-water-r1" , amount = 30},
		{type = "fluid", name ="molten-copper-r1" , amount = 30},
	},		
	result = "copper-plate",
	result_count = 5,
	category = "red-casting-chamber",
	subgroup = "plate-products",
	order = "b-b-d",
},
{--Steel Plate v1-
	type = "recipe",
	name = "steel-plate-r1v1",				
	icon = "__base__/graphics/icons/steel-plate.png",
	icon_size = 64, icon_mipmaps = 4,
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type="item", name="clean-steel-r1", amount=1},
	},		
	result = "steel-plate",
	result_count = 2,
	category = "red-furnace",
	subgroup = "plate-products",
	order = "b-c-a",
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
		{type = "fluid", name ="molten-steel-r1" , amount = 30},
	},		
	result = "steel-plate",
	result_count = 5,
	category = "red-casting-chamber",
	subgroup = "plate-products",
	order = "b-c-a",
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
	result = "reinforced-component-r1",
	result_count = 10,
	category = "crafting",
},
{--Reinforced Iron Plate-
	type = "recipe",
	name = "reinforced-iron-plate-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = {
		{type="item", name="iron-plate", amount=1},
		{"glue-r1", 2},
		{type="item", name="reinforced-component-r1", amount=2},
	},		
	result = "reinforced-iron-plate-r1",
	result_count = 1,
	category = "crafting",
},
{--Reinforced Copper Plate-
	type = "recipe",
	name = "reinforced-copper-plate-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = 
	{
		{type="item", name="copper-plate", amount=1},
		{"glue-r1", 2},
		{type="item", name="reinforced-component-r1", amount=2},
	},		
	result = "reinforced-copper-plate-r1",
	result_count = 1,
	category = "crafting",
},
{--Reinforced Coal Plate-
	type = "recipe",
	name = "reinforced-coal-plate-r1",
	energy_required = 0.5,
	enabled = false,
	ingredients = 
	{
		{type="item", name="coal", amount=2},
		{"iron-plate", 1},
		{type="item", name="reinforced-component-r1", amount=2},
	},		
	result = "reinforced-coal-plate-r1",
	result_count = 1,
	category = "crafting",
},
{--Eletronic Component-
	type = "recipe",
	name = "electric-component-r1",				
	energy_required = 2,
	enabled = false,
	ingredients = 
	{
		{type="item", name="reinforced-iron-plate-r1", amount=4},
		{type="item", name="reinforced-copper-plate-r1", amount=4},
		{type="item", name="reinforced-coal-plate-r1", amount=4},
		{type="item", name="cable-r1", amount=5},
	},		
	result = "electric-component-r1",
	result_count = 1,
	category = "crafting",
},
--ITEM
	{--Copper Gear Wheel R1
		type = "item",
		name = "copper-gear-wheel-r1",
		icon = "__RExtended__/graphics/icons/C&R/copper-gear-wheel.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "c[copper-gear-wheel]",
		stack_size = 100
	},
{--Enriched Coal
	type = "item",
	name = "enriched-coal-r1",
	icon = "__RExtended__/graphics/icons/C&R/enrichedCoal-r1.png",
	icon_size = 32,
	fuel_category = "chemical",
	fuel_value = "72MJ",
	subgroup = "chemical-products-r1",
	order = "a-b-a",
	stack_size = 200
},
{--Clean Coal R1
	type = "item",
	name = "clean-coal-r1",
	icon = "__RExtended__/graphics/icons/C&R/clean-coal-r1.png",
	icon_size = 32,
	fuel_category = "chemical",
	fuel_value = "36MJ",
	subgroup = "chemical-products-r1",
	order = "a-a-b",
	stack_size = 200
},
{--Clean Iron R1
    type = "item",
    name = "clean-iron-r1",
    icon = "__RExtended__/graphics/icons/C&R/clean-iron-r1.png",
	icon_size = 32,
    subgroup = "plate-products",
    order = "b-a-a",
    stack_size = 100,
},
{--Clean Copper R1
    type = "item",
    name = "clean-copper-r1",
    icon = "__RExtended__/graphics/icons/C&R/clean-copper-r1.png",
	icon_size = 32,
    subgroup = "plate-products",
    order = "b-b-a",
	stack_size = 100,
},
{--Clean Steel R1
    type = "item",
    name = "clean-steel-r1",
    icon = "__RExtended__/graphics/icons/C&R/clean-steel-r1.png",
	icon_size = 32,
    subgroup = "plate-products",
    order = "b-c-a",
	stack_size = 100,
},
{--Cable R1
    type = "item",
    name = "cable-r1",
    icon = "__RExtended__/graphics/icons/C&R/cable-r1.png",
	icon_size = 32,
    subgroup = "inter-products",
    order = "c-a-a",
    stack_size = 200,
},
{--Reinforced Iron Gear
    type = "item",
    name = "reinforced-gear-iron-r1",
    icon = "__RExtended__/graphics/icons/C&R/reinforced-gear-iron-r1.png",
	icon_size = 32,
    subgroup = "inter-products",
    order = "c-b-a",
    stack_size = 200,
},
{--Reinforced Copper Gear
    type = "item",
    name = "reinforced-gear-copper-r1",
    icon = "__RExtended__/graphics/icons/C&R/reinforced-gear-copper-r1.png",
	icon_size = 32,
    subgroup = "inter-products",
    order = "c-b-b",
    stack_size = 200,
},
{--Glue
	type = "item",
	name = "glue-r1",
	icon = "__RExtended__/graphics/icons/C&R/glue-r1.png",
	icon_size = 32,
	subgroup = "inter-products",
	order = "c-c-a",
	stack_size = 500,
},
{--Special Component
    type = "item",
    name = "reinforced-component-r1",
    icon = "__RExtended__/graphics/icons/C&R/reinforced-component-r1.png",
	icon_size = 32,
    subgroup = "reinforced-products",
    order = "d-a-a",
    stack_size = 400,
},
{--Reinforced Iron Plate
	type = "item",
	name = "reinforced-iron-plate-r1",
	icon = "__RExtended__/graphics/icons/C&R/reinforced-iron-plate-r1.png",
	icon_size = 32,
	subgroup = "reinforced-products",
	order = "d-a-b",
	stack_size = 200,
}, 
{--Reinforced Copper Plate
    type = "item",
    name = "reinforced-copper-plate-r1",
    icon = "__RExtended__/graphics/icons/C&R/reinforced-copper-plate-r1.png",
	icon_size = 32,
    subgroup = "reinforced-products",
	order = "d-a-c",
	stack_size = 200,
},
{--Reinforced Coal Plate
    type = "item",
    name = "reinforced-coal-plate-r1",
    icon = "__RExtended__/graphics/icons/C&R/reinforced-coal-plate-r1.png",
	icon_size = 32,
    subgroup = "reinforced-products",
	order = "d-a-d",
	stack_size = 200,
},
{--Eletronic Component
    type = "item",
    name = "electric-component-r1",
    icon = "__RExtended__/graphics/icons/C&R/electric-component-r1.png",
	icon_size = 32,
    subgroup = "reinforced-products",
	order = "d-b-a",
	stack_size = 200,
}
})
--Blue Quartz Recipe
local recipe_quartz = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_quartz.category = "crafting-with-fluid"
recipe_quartz.name = "blue-quartz-r1"
recipe_quartz.energy_required = 0.5
recipe_quartz.result = "blue-quartz-r1"
recipe_quartz.ingredients = {
	{"stone", 4},
	{type="fluid", name="pressurized-water-r1", amount=100}
}
recipe_quartz.enabled = false

--Crystalline Silicon Recipe
local recipe_silicon = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_silicon.name = "crystalline-silicon-r1"
recipe_silicon.energy_required = 10
recipe_silicon.result = "crystalline-silicon-r1"
recipe_silicon.ingredients = {{"blue-quartz-r1", 4}}
recipe_silicon.enabled = false

local recipe_solarCell = table.deepcopy(data.raw.recipe['engine-unit'])
recipe_solarCell.name = "solar-cell"
recipe_solarCell.energy_required = 5
recipe_solarCell.result = "solar-cell"
recipe_solarCell.ingredients = {
	{"crystalline-silicon-r1", 2},
	{"electronic-circuit", 2},
	{"iron-gear-wheel", 2}
}
recipe_solarCell.enabled = false

data:extend({recipe_quartz,recipe_silicon,recipe_solarCell})
--Blue Quartz Item
local item_quartz = table.deepcopy(data.raw.item['iron-plate'])
item_quartz.name = "blue-quartz-r1"
item_quartz.icon = "__RExtended__/graphics/icons/C&R/blue-quartz-r1.png"
item_quartz.icon_size = 32
item_quartz.subgroup = "solar-products"
item_quartz.order = "e-a"

--Crystalline Silicon Item
local item_silicon = table.deepcopy(data.raw.item['iron-plate'])
item_silicon.name = "crystalline-silicon-r1"
item_silicon.icon = "__RExtended__/graphics/icons/C&R/crystalline-silicon-r1.png"
item_silicon.icon_size = 32
item_silicon.subgroup = "solar-products"
item_silicon.order = "e-b"

local item_solarCell = table.deepcopy(data.raw.item['iron-stick'])
item_solarCell.name = "solar-cell"
item_solarCell.icon = "__RExtended__/graphics/icons/C&R/solar-cell-r1.png"
item_solarCell.icon_size = 32
item_solarCell.subgroup = "solar-products"
item_solarCell.order = "e-c"

data:extend({item_quartz,item_silicon,item_solarCell})

