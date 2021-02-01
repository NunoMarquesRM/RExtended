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
recipe_iron_plate.energy_required = 6
recipe_iron_plate.result = "iron-plate-sat1"
recipe_iron_plate.result_count = 2
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
recipe_copper_sheet.energy_required = 6
recipe_copper_sheet.result = "copper-sheet-sat1"
recipe_copper_sheet.ingredients = {{"copper-ingot-sat1", 2}}
recipe_copper_sheet.enabled = true
recipe_copper_sheet.category = "crafting"
recipe_copper_sheet.subgroup = "copper-extends"


data:extend({item_copper_sheet,recipe_copper_sheet})
--------------------------------------------------------------------------
--- Iron Rod
local item_iron_rod = table.deepcopy(data.raw.item['copper-cable'])
item_iron_rod.name = "iron-rod-sat1"
item_iron_rod.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Rod.png"
item_iron_rod.icon_size = 64
item_iron_rod.subgroup = "iron-extends"
item_iron_rod.order = "b-b"

local recipe_iron_rod = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_iron_rod.name = "iron-rod-sat1"
recipe_iron_rod.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Rod.png"
recipe_iron_rod.icon_size = 64
recipe_iron_rod.energy_required = 4
recipe_iron_rod.result = "iron-rod-sat1"
recipe_iron_rod.ingredients = {{"iron-ingot-sat1", 1}}
recipe_iron_rod.enabled = true
recipe_iron_rod.category = "crafting"
recipe_iron_rod.subgroup = "iron-extends"

data:extend({item_iron_rod,recipe_iron_rod})
--------------------------------------------------------------------------
--- Screw
local item_iron_screw = table.deepcopy(data.raw.item['copper-cable'])
item_iron_screw.name = "iron-screw-sat1"
item_iron_screw.icon = "__RExtended__/graphics/icons/Satisfactory/Screw.png"
item_iron_screw.icon_size = 64
item_iron_screw.subgroup = "iron-extends"
item_iron_screw.order = "b-c"

local recipe_iron_screw = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_iron_screw.name = "iron-screw-sat1"
recipe_iron_screw.icon = "__RExtended__/graphics/icons/Satisfactory/Screw.png"
recipe_iron_screw.icon_size = 64
recipe_iron_screw.energy_required = 6
recipe_iron_screw.result = "iron-screw-sat1"
recipe_iron_screw.result_count = 4
recipe_iron_screw.ingredients = {{"iron-rod-sat1", 1}}
recipe_iron_screw.enabled = true
recipe_iron_screw.category = "crafting"
recipe_iron_screw.subgroup = "iron-extends"

data:extend({item_iron_screw,recipe_iron_screw})
--------------------------------------------------------------------------
--- Wire
local item_copper_wire = table.deepcopy(data.raw.item['copper-cable'])
item_copper_wire.name = "copper-wire-sat1"
item_copper_wire.icon = "__RExtended__/graphics/icons/Satisfactory/Wire.png"
item_copper_wire.icon_size = 64
item_copper_wire.subgroup = "copper-extends"
item_copper_wire.order = "c-b"

local recipe_copper_wire = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_copper_wire.name = "copper-wire-sat1"
recipe_copper_wire.icon = "__RExtended__/graphics/icons/Satisfactory/Wire.png"
recipe_copper_wire.icon_size = 64
recipe_copper_wire.energy_required = 6
recipe_copper_wire.result = "copper-wire-sat1"
recipe_copper_wire.result_count = 2
recipe_copper_wire.ingredients = {{"copper-ingot-sat1", 1}}
recipe_copper_wire.enabled = true
recipe_copper_wire.category = "crafting"
recipe_copper_wire.subgroup = "copper-extends"


data:extend({item_copper_wire,recipe_copper_wire})
--------------------------------------------------------------------------
--- Cable
local item_copper_cable = table.deepcopy(data.raw.item['copper-cable'])
item_copper_cable.name = "copper-cable-sat1"
item_copper_cable.icon = "__RExtended__/graphics/icons/Satisfactory/Cable.png"
item_copper_cable.icon_size = 64
item_copper_cable.subgroup = "copper-extends"
item_copper_cable.order = "c-c"

local recipe_copper_cable = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_copper_cable.name = "copper-cable-sat1"
recipe_copper_cable.icon = "__RExtended__/graphics/icons/Satisfactory/Cable.png"
recipe_copper_cable.icon_size = 64
recipe_copper_cable.energy_required = 6
recipe_copper_cable.result = "copper-cable-sat1"
recipe_copper_cable.result_count = 1
recipe_copper_cable.ingredients = {{"copper-wire-sat1", 2}}
recipe_copper_cable.enabled = true
recipe_copper_cable.category = "crafting"
recipe_copper_cable.subgroup = "copper-extends"


data:extend({item_copper_cable,recipe_copper_cable})
--------------------------------------------------------------------------