--------------------------------------------------------------------------
--- Iron Ingot
local item_iron_ingot = table.deepcopy(data.raw.item['iron-plate'])
item_iron_ingot.name = "iron-ingot-sat1"
item_iron_ingot.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Ingot.png"
item_iron_ingot.icon_size = 64
item_iron_ingot.subgroup = "ingots"
item_iron_ingot.order = "a-a"
item_iron_ingot.stack_size = 100

local recipe_iron_ingot = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_iron_ingot.name = "iron-ingot-sat1"
recipe_iron_ingot.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Ingot.png"
recipe_iron_ingot.icon_size = 64
recipe_iron_ingot.energy_required = 3
recipe_iron_ingot.result = "iron-ingot-sat1"
recipe_iron_ingot.ingredients = {{"iron-ore", 1}}
recipe_iron_ingot.enabled = false
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
item_copper_ingot.stack_size = 100

local recipe_copper_ingot = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_copper_ingot.name = "copper-ingot-sat1"
recipe_copper_ingot.icon = "__RExtended__/graphics/icons/Satisfactory/Copper_Ingot.png"
recipe_copper_ingot.icon_size = 64
recipe_copper_ingot.energy_required = 3
recipe_copper_ingot.result = "copper-ingot-sat1"
recipe_copper_ingot.ingredients = {{"copper-ore", 1}}
recipe_copper_ingot.enabled = false
recipe_copper_ingot.category = "red-furnace"
recipe_copper_ingot.subgroup = "ingots"

data:extend({item_copper_ingot,recipe_copper_ingot})
--------------------------------------------------------------------------
--- Concrete
local item_modular_frame = table.deepcopy(data.raw.item['copper-cable'])
item_modular_frame.name = "concrete-sat1"
item_modular_frame.icon = "__RExtended__/graphics/icons/Satisfactory/Concrete.png"
item_modular_frame.icon_size = 64
item_modular_frame.subgroup = "ingots"
item_modular_frame.order = "a-c"
item_modular_frame.stack_size = 100

local recipe_modular_frame = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_modular_frame.name = "concrete-sat1"
recipe_modular_frame.icon = "__RExtended__/graphics/icons/Satisfactory/Concrete.png"
recipe_modular_frame.icon_size = 64
recipe_modular_frame.energy_required = 4
recipe_modular_frame.result = "concrete-sat1"
recipe_modular_frame.result_count = 1
recipe_modular_frame.ingredients = {{"stone", 3}}
recipe_modular_frame.enabled = false
recipe_modular_frame.category = "crafting"
recipe_modular_frame.subgroup = "ingots"


data:extend({item_modular_frame,recipe_modular_frame})
--------------------------------------------------------------------------
--- Iron Plate
local item_iron_plate = table.deepcopy(data.raw.item['copper-cable'])
item_iron_plate.name = "iron-plate-sat1"
item_iron_plate.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Plate.png"
item_iron_plate.icon_size = 64
item_iron_plate.subgroup = "iron-extends"
item_iron_plate.order = "b-a"
item_iron_plate.stack_size = 100

local recipe_iron_plate = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_iron_plate.name = "iron-plate-sat1"
recipe_iron_plate.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Plate.png"
recipe_iron_plate.icon_size = 64
recipe_iron_plate.energy_required = 6
recipe_iron_plate.result = "iron-plate-sat1"
recipe_iron_plate.result_count = 2
recipe_iron_plate.ingredients = {{"iron-ingot-sat1", 3}}
recipe_iron_plate.enabled = false
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
item_copper_sheet.stack_size = 100

local recipe_copper_sheet = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_copper_sheet.name = "copper-sheet-sat1"
recipe_copper_sheet.icon = "__RExtended__/graphics/icons/Satisfactory/Copper_Sheet.png"
recipe_copper_sheet.icon_size = 64
recipe_copper_sheet.energy_required = 6
recipe_copper_sheet.result = "copper-sheet-sat1"
recipe_copper_sheet.ingredients = {{"copper-ingot-sat1", 2}}
recipe_copper_sheet.enabled = false
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
item_iron_rod.stack_size = 100

local recipe_iron_rod = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_iron_rod.name = "iron-rod-sat1"
recipe_iron_rod.icon = "__RExtended__/graphics/icons/Satisfactory/Iron_Rod.png"
recipe_iron_rod.icon_size = 64
recipe_iron_rod.energy_required = 4
recipe_iron_rod.result = "iron-rod-sat1"
recipe_iron_rod.ingredients = {{"iron-ingot-sat1", 1}}
recipe_iron_rod.enabled = false
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
item_iron_screw.stack_size = 500

local recipe_iron_screw = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_iron_screw.name = "iron-screw-sat1"
recipe_iron_screw.icon = "__RExtended__/graphics/icons/Satisfactory/Screw.png"
recipe_iron_screw.icon_size = 64
recipe_iron_screw.energy_required = 6
recipe_iron_screw.result = "iron-screw-sat1"
recipe_iron_screw.result_count = 4
recipe_iron_screw.ingredients = {{"iron-rod-sat1", 1}}
recipe_iron_screw.enabled = false
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
item_copper_wire.stack_size = 500

local recipe_copper_wire = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_copper_wire.name = "copper-wire-sat1"
recipe_copper_wire.icon = "__RExtended__/graphics/icons/Satisfactory/Wire.png"
recipe_copper_wire.icon_size = 64
recipe_copper_wire.energy_required = 6
recipe_copper_wire.result = "copper-wire-sat1"
recipe_copper_wire.result_count = 2
recipe_copper_wire.ingredients = {{"copper-ingot-sat1", 1}}
recipe_copper_wire.enabled = false
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
item_copper_cable.stack_size = 100

local recipe_copper_cable = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_copper_cable.name = "copper-cable-sat1"
recipe_copper_cable.icon = "__RExtended__/graphics/icons/Satisfactory/Cable.png"
recipe_copper_cable.icon_size = 64
recipe_copper_cable.energy_required = 6
recipe_copper_cable.result = "copper-cable-sat1"
recipe_copper_cable.result_count = 1
recipe_copper_cable.ingredients = {{"copper-wire-sat1", 2}}
recipe_copper_cable.enabled = false
recipe_copper_cable.category = "crafting"
recipe_copper_cable.subgroup = "copper-extends"


data:extend({item_copper_cable,recipe_copper_cable})
--------------------------------------------------------------------------
--- Reinforced Iron Plate
local item_reinforced_iron_plate = table.deepcopy(data.raw.item['copper-cable'])
item_reinforced_iron_plate.name = "reinforced-iron-plate-sat1"
item_reinforced_iron_plate.icon = "__RExtended__/graphics/icons/Satisfactory/Reinforced_Iron_Plate.png"
item_reinforced_iron_plate.icon_size = 64
item_reinforced_iron_plate.subgroup = "iron-extends"
item_reinforced_iron_plate.order = "b-d"
item_reinforced_iron_plate.stack_size = 100

local recipe_reinforced_iron_plate = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_reinforced_iron_plate.name = "reinforced-iron-plate-sat1"
recipe_reinforced_iron_plate.icon = "__RExtended__/graphics/icons/Satisfactory/Reinforced_Iron_Plate.png"
recipe_reinforced_iron_plate.icon_size = 64
recipe_reinforced_iron_plate.energy_required = 12
recipe_reinforced_iron_plate.result = "reinforced-iron-plate-sat1"
recipe_reinforced_iron_plate.result_count = 1
recipe_reinforced_iron_plate.ingredients = {{"iron-plate-sat1", 6},{"iron-screw-sat1", 12}}
recipe_reinforced_iron_plate.enabled = false
recipe_reinforced_iron_plate.category = "crafting"
recipe_reinforced_iron_plate.subgroup = "iron-extends"


data:extend({item_reinforced_iron_plate,recipe_reinforced_iron_plate})
--------------------------------------------------------------------------
--- Rotor
local item_rotor = table.deepcopy(data.raw.item['copper-cable'])
item_rotor.name = "rotor-sat1"
item_rotor.icon = "__RExtended__/graphics/icons/Satisfactory/Rotor.png"
item_rotor.icon_size = 64
item_rotor.subgroup = "iron-extends"
item_rotor.order = "b-e"
item_rotor.stack_size = 100

local recipe_rotor = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_rotor.name = "rotor-sat1"
recipe_rotor.icon = "__RExtended__/graphics/icons/Satisfactory/Rotor.png"
recipe_rotor.icon_size = 64
recipe_rotor.energy_required = 15
recipe_rotor.result = "rotor-sat1"
recipe_rotor.result_count = 1
recipe_rotor.ingredients = {{"iron-rod-sat1", 5},{"iron-screw-sat1", 25}}
recipe_rotor.enabled = false
recipe_rotor.category = "crafting"
recipe_rotor.subgroup = "iron-extends"


data:extend({item_rotor,recipe_rotor})
--------------------------------------------------------------------------
--- Modular Frame
local item_modular_frame = table.deepcopy(data.raw.item['copper-cable'])
item_modular_frame.name = "modular-frame-sat1"
item_modular_frame.icon = "__RExtended__/graphics/icons/Satisfactory/Modular_Frame.png"
item_modular_frame.icon_size = 64
item_modular_frame.subgroup = "iron-extends"
item_modular_frame.order = "b-f"
item_modular_frame.stack_size = 50

local recipe_modular_frame = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_modular_frame.name = "modular-frame-sat1"
recipe_modular_frame.icon = "__RExtended__/graphics/icons/Satisfactory/Modular_Frame.png"
recipe_modular_frame.icon_size = 64
recipe_modular_frame.energy_required = 60
recipe_modular_frame.result = "modular-frame-sat1"
recipe_modular_frame.result_count = 2
recipe_modular_frame.ingredients = {{"reinforced-iron-plate-sat1", 3},{"iron-rod-sat1", 12}}
recipe_modular_frame.enabled = false
recipe_modular_frame.category = "crafting"
recipe_modular_frame.subgroup = "iron-extends"


data:extend({item_modular_frame,recipe_modular_frame})
--------------------------------------------------------------------------
--- Smart Plating
local item_modular_frame = table.deepcopy(data.raw.item['copper-cable'])
item_modular_frame.name = "smart-plating-sat1"
item_modular_frame.icon = "__RExtended__/graphics/icons/Satisfactory/Smart_Plating.png"
item_modular_frame.icon_size = 64
item_modular_frame.subgroup = "space-elevator-extends"
item_modular_frame.order = "x-a"
item_modular_frame.stack_size = 50

local recipe_modular_frame = table.deepcopy(data.raw.recipe['copper-cable'])
recipe_modular_frame.name = "smart-plating-sat1"
recipe_modular_frame.icon = "__RExtended__/graphics/icons/Satisfactory/Smart_Plating.png"
recipe_modular_frame.icon_size = 64
recipe_modular_frame.energy_required = 30
recipe_modular_frame.result = "smart-plating-sat1"
recipe_modular_frame.result_count = 1
recipe_modular_frame.ingredients = {{"reinforced-iron-plate-sat1", 1},{"rotor-sat1", 1}}
recipe_modular_frame.enabled = false
recipe_modular_frame.category = "crafting"
recipe_modular_frame.subgroup = "space-elevator-extends"


data:extend({item_modular_frame,recipe_modular_frame})
--------------------------------------------------------------------------