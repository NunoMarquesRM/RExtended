--- Iron Ingot
local item_iron_ingot = table.deepcopy(data.raw.item['iron-plate'])
item_iron_ingot.name = "iron-ingot-s1"
item_iron_ingot.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Ingot.png"
item_iron_ingot.icon_size = 256
item_iron_ingot.subgroup = "ingots"
item_iron_ingot.order = "a-a"

local recipe_iron_ingot = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_iron_ingot.name = "iron-ingot-s1"
recipe_iron_ingot.energy_required = 3
recipe_iron_ingot.result = "iron-ingot-s1"
recipe_iron_ingot.ingredients = {{"iron-ore", 1}}
recipe_iron_ingot.enabled = true



data:extend({item_iron_ingot,recipe_iron_ingot})

--- Copper Ingot
local item_copper_ingot = table.deepcopy(data.raw.item['iron-plate'])
item_copper_ingot.name = "copper-ingot-s1"
item_copper_ingot.icon = "__RExtended__/graphics/icons/Satisfactory/Copper_Ingot.png"
item_copper_ingot.icon_size = 256
item_copper_ingot.subgroup = "ingots"
item_copper_ingot.order = "a-b"

local recipe_copper_ingot = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_copper_ingot.name = "copper-ingot-s1"
recipe_copper_ingot.energy_required = 3
recipe_copper_ingot.result = "copper-ingot-s1"
recipe_copper_ingot.ingredients = {{"copper-ore", 1}}
recipe_copper_ingot.enabled = true




data:extend({item_copper_ingot,recipe_copper_ingot})