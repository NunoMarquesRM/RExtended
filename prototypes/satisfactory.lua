--------------------------------------------------------------------------
--- Iron Ingot
local item_iron_ingot = table.deepcopy(data.raw.item['iron-plate'])
item_iron_ingot.name = "iron-ingot-sat1"
item_iron_ingot.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Ingot.png"
item_iron_ingot.icon_size = 64
item_iron_ingot.subgroup = "ingots"
item_iron_ingot.order = "a-a"

local recipe_iron_ingot = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_iron_ingot.name = "iron-ingot-sat1"
recipe_iron_ingot.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Ingot.png"
recipe_iron_ingot.icon_size = 64
recipe_iron_ingot.energy_required = 3
recipe_iron_ingot.result = "iron-ingot-sat1"
recipe_iron_ingot.ingredients = {{"iron-ore", 1}}
recipe_iron_ingot.enabled = true
recipe_iron_ingot.category = "red-furnace"
recipe_iron_ingot.subgroup = "ingots"

data:extend({item_iron_ingot,recipe_iron_ingot})
--------------------------------------------------------------------------
--- Copper Ingot
local item_copper_ingot = table.deepcopy(data.raw.item['iron-plate'])
item_copper_ingot.name = "copper-ingot-sat1"
item_copper_ingot.icon = "__RExtended__/graphics/icons/Satisfactory/Copper_Ingot.png"
item_copper_ingot.icon_size = 64
item_copper_ingot.subgroup = "ingots"
item_copper_ingot.order = "a-b"

local recipe_copper_ingot = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_copper_ingot.name = "copper-ingot-sat1"
recipe_copper_ingot.icon = "__RExtended__/graphics/icons/Satisfactory/Copper_Ingot.png"
recipe_copper_ingot.icon_size = 64
recipe_copper_ingot.energy_required = 3
recipe_copper_ingot.result = "copper-ingot-sat1"
recipe_copper_ingot.ingredients = {{"copper-ore", 1}}
recipe_copper_ingot.enabled = true
recipe_copper_ingot.category = "red-furnace"
recipe_copper_ingot.subgroup = "ingots"

data:extend({item_copper_ingot,recipe_copper_ingot})
--------------------------------------------------------------------------
--- Iron Plate
local item_iron_plate = table.deepcopy(data.raw.item['copper-cable'])
item_iron_plate.name = "iron-plate-sat1"
item_iron_plate.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Plate.png"
item_iron_plate.icon_size = 64
item_iron_plate.subgroup = "iron-extends"
item_iron_plate.order = "b-a"

local recipe_iron_plate = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_iron_plate.name = "iron-plate-sat1"
recipe_iron_plate.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Plate.png"
recipe_iron_plate.icon_size = 64
recipe_iron_plate.energy_required = 2
recipe_iron_plate.result = "iron-plate-sat1"
recipe_iron_plate.ingredients = {{"iron-ingot-sat1", 3}}
recipe_iron_plate.enabled = true
recipe_iron_plate.category = "crafting"
recipe_iron_plate.subgroup = "iron-extends"

data:extend({item_iron_plate,recipe_iron_plate})
--------------------------------------------------------------------------
--- Copper Sheet
local item_copper_sheet = table.deepcopy(data.raw.item['copper-cable'])
item_copper_sheet.name = "copper-sheet-sat1"
item_copper_sheet.icon = "__RExtended__/graphics/icons/Satisfactory/Copper_Sheet.png"
item_copper_sheet.icon_size = 64
item_copper_sheet.subgroup = "copper-extends"
item_copper_sheet.order = "c-a"

local recipe_copper_sheet = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_copper_sheet.name = "copper-sheet-sat1"
recipe_copper_sheet.icon = "__RExtended__/graphics/icons/Satisfactory/Copper_Sheet.png"
recipe_copper_sheet.icon_size = 64
recipe_copper_sheet.energy_required = 2
recipe_copper_sheet.result = "copper-sheet-sat1"
recipe_copper_sheet.ingredients = {{"copper-ingot-sat1", 3}}
recipe_copper_sheet.enabled = true
recipe_copper_sheet.category = "crafting"
recipe_copper_sheet.subgroup = "copper-extends"


data:extend({item_copper_sheet,recipe_copper_sheet})
--------------------------------------------------------------------------