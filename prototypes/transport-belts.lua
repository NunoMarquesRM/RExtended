local tb_r1_item = table.deepcopy(data.raw.item["transport-belt"])
tb_r1_item.name = "transport-belt-r1"
tb_r1_item.icon = "__RExtended__/graphics/icons/transport-belts/transport-belt-r1.png"
tb_r1_item.icon_size = 32
tb_r1_item.subgroup = "re-belts"
tb_r1_item.order = "h-a-a"
tb_r1_item.place_result = "transport-belt-r1"
tb_r1_item.stack_size = 100

local tb_r1_recipe = table.deepcopy(data.raw.recipe["transport-belt"])
tb_r1_recipe.name = "transport-belt-r1"
tb_r1_recipe.ingredients = {
	{"wood-plate-r1", 2}
}
tb_r1_recipe.result = "transport-belt-r1"

local transport_r1 = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
transport_r1.name = "transport-belt-r1"
transport_r1.icon = "__RExtended__/graphics/icons/transport-belts/transport-belt-r1.png"
transport_r1.icon_size = 32
transport_r1.minable.result = "transport-belt-r1"

transport_r1.belt_animation_set.animation_set.filename = "__RExtended__/graphics/entity/transport-belts/r1/r1.png"
transport_r1.belt_animation_set.animation_set.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r1/hr-r1.png"

local un_belt_r1 = table.deepcopy(data.raw.recipe['underground-belt'])
un_belt_r1.name = "underground-belt-r1"
un_belt_r1.ingredients = {
	{"transport-belt-r1",5},
	{"iron-plate",10}
}
un_belt_r1.result = "underground-belt-r1"
un_belt_r1.subgroup = "re-belts"
un_belt_r1.order = "h-a-b"

local splitter_r1 = table.deepcopy(data.raw.recipe['splitter'])
splitter_r1.name = "splitter-r1"
splitter_r1.ingredients = {
	{"electronic-circuit", 5},
	{"iron-plate", 5},
	{"transport-belt-r1", 4}
}
splitter_r1.result = "splitter-r1"
splitter_r1.subgroup = "re-belts"
splitter_r1.order = "h-a-c"

local un_belt_r1_entity = table.deepcopy(data.raw['underground-belt']['underground-belt'])
un_belt_r1_entity.name = "underground-belt-r1"
un_belt_r1_entity.minable.result = "underground-belt-r1"

local un_belt_r1_item = table.deepcopy(data.raw.item['underground-belt'])
un_belt_r1_item.name = "underground-belt-r1"
un_belt_r1_item.place_result = "underground-belt-r1"
un_belt_r1_item.subgroup = "re-belts"
un_belt_r1_item.order = "h-a-b"

local splitter_r1_entity = table.deepcopy(data.raw['splitter']['splitter'])
splitter_r1_entity.name = "splitter-r1"
splitter_r1_entity.minable.result = "splitter-r1"

local splitter_r1_item = table.deepcopy(data.raw.item['splitter'])
splitter_r1_item.name = "splitter-r1"
splitter_r1_item.place_result = "splitter-r1"
splitter_r1_item.subgroup = "re-belts"
splitter_r1_item.order = "h-a-c"

data:extend({tb_r1_item,tb_r1_recipe,transport_r1,un_belt_r1,splitter_r1,un_belt_r1_entity,un_belt_r1_item,splitter_r1_entity,splitter_r1_item})

local un_belt_bug = table.deepcopy(data.raw.recipe['fast-underground-belt'])
un_belt_bug.name = "underground-belt-bug"
un_belt_bug.ingredients = {
	{"underground-belt-r1", 2},
	{"iron-gear-wheel", 40}
}
un_belt_bug.result = "fast-underground-belt"
un_belt_bug.subgroup = "re-belts"
un_belt_bug.order = "h-a-d"

local splitter_bug = table.deepcopy(data.raw.recipe['fast-splitter'])
splitter_bug.name = "splitter-bug"
splitter_bug.ingredients = {
	{"electronic-circuit", 10},
	{"iron-gear-wheel", 10},
	{"splitter-r1", 1}
}
splitter_bug.result = "fast-splitter"
splitter_bug.subgroup = "re-belts"
splitter_bug.order = "h-a-e"

data:extend({un_belt_bug, splitter_bug})

------------------------------------LOGISTIC R2-----------------------------------------------------

local tb_r2_item = table.deepcopy(data.raw.item["transport-belt"])
tb_r2_item.name = "transport-belt-r2"
tb_r2_item.icon = "__RExtended__/graphics/icons/transport-belts/transport-belt-r2.png"
tb_r2_item.icon_size = 32
tb_r2_item.subgroup = "re-belts"
tb_r2_item.order = "h-b-a"
tb_r2_item.place_result = "transport-belt-r2"
tb_r2_item.stack_size = 100

local tb_r2_recipe = table.deepcopy(data.raw.recipe["transport-belt"])
tb_r2_recipe.name = "transport-belt-r2"
tb_r2_recipe.enabled = false
tb_r2_recipe.ingredients =
{
	{"fast-transport-belt", 5},
	{"copper-gear-wheel-r1", 5}
}
tb_r2_recipe.result = "transport-belt-r2"

local transport_r2 = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
transport_r2.name = "transport-belt-r2"
transport_r2.icon = "__RExtended__/graphics/icons/transport-belts/transport-belt-r2.png"
transport_r2.icon_size = 32
transport_r2.minable.result = "transport-belt-r2"

transport_r2.belt_animation_set.animation_set.filename = "__RExtended__/graphics/entity/transport-belts/r2/r2.png"
transport_r2.belt_animation_set.animation_set.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r2/hr-r2.png"
transport_r2.speed = 0.0774 --33.02 items/s

data:extend({tb_r2_item,tb_r2_recipe,transport_r2})

local un_belt_r2_item = table.deepcopy(data.raw.item['underground-belt'])
un_belt_r2_item.name = "underground-belt-r2"
un_belt_r2_item.icon = "__RExtended__/graphics/icons/transport-belts/underground-belt-r2.png"
un_belt_r2_item.icon_size = 32
un_belt_r2_item.subgroup = "re-belts"
un_belt_r2_item.order = "h-b-b"
un_belt_r2_item.place_result = "underground-belt-r2"

local un_belt_r2_recipe = table.deepcopy(data.raw.recipe['underground-belt'])
un_belt_r2_recipe.name = "underground-belt-r2"
un_belt_r2_recipe.ingredients =
{
	{"fast-transport-belt",5},
	{"copper-plate",10}
}
un_belt_r2_recipe.result = "underground-belt-r2"

local un_transport_r2 = table.deepcopy(data.raw['underground-belt']['underground-belt'])
un_transport_r2.name = "underground-belt-r2"
un_transport_r2.minable.result = "underground-belt-r2"
un_transport_r2.max_distance = 10

un_transport_r2.belt_animation_set.animation_set.filename = "__RExtended__/graphics/entity/transport-belts/r2/r2.png"
un_transport_r2.belt_animation_set.animation_set.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r2/hr-r2.png"

un_transport_r2.structure.direction_in.sheet.filename = "__RExtended__/graphics/entity/transport-belts/r2/un-r2.png"
un_transport_r2.structure.direction_in.sheet.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r2/hr-un-r2.png"

un_transport_r2.structure.direction_out.sheet.filename = "__RExtended__/graphics/entity/transport-belts/r2/un-r2.png"
un_transport_r2.structure.direction_out.sheet.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r2/hr-un-r2.png"
un_transport_r2.speed = 0.0774 --33.02 items/s

data:extend({un_belt_r2_item,un_belt_r2_recipe,un_transport_r2})

local spli_r2_item = table.deepcopy(data.raw.item['splitter'])
spli_r2_item.name = "splitter-r2"
spli_r2_item.icon = "__RExtended__/graphics/icons/transport-belts/splitter-r2.png"
spli_r2_item.icon_size = 32
spli_r2_item.subgroup = "re-belts"
spli_r2_item.order = "h-b-c"
spli_r2_item.place_result = "splitter-r2"

local spli_r2_recipe = table.deepcopy(data.raw.recipe['splitter'])
spli_r2_recipe.name = "splitter-r2"
spli_r2_recipe.ingredients =
{
	{"fast-splitter", 1},
	{"copper-gear-wheel-r1", 10},
	{"advanced-circuit", 10}
}
spli_r2_recipe.result = "splitter-r2"

local spli_r2 = table.deepcopy(data.raw['splitter']['splitter'])
spli_r2.name = "splitter-r2"
spli_r2.icon = "__RExtended__/graphics/icons/transport-belts/splitter-r2.png"
spli_r2.icon_size = 32
spli_r2.minable.result = "splitter-r2"
spli_r2.speed = 0.0774
spli_r2.structure_animation_speed_coefficient = 1

spli_r2.belt_animation_set.animation_set.filename = "__RExtended__/graphics/entity/transport-belts/r2/r2.png"
spli_r2.belt_animation_set.animation_set.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r2/hr-r2.png"

spli_r2.structure.north.filename = "__RExtended__/graphics/entity/transport-belts/r2/splitter/splitter-north.png"
spli_r2.structure.east.filename = "__RExtended__/graphics/entity/transport-belts/r2/splitter/splitter-east.png"
spli_r2.structure.south.filename = "__RExtended__/graphics/entity/transport-belts/r2/splitter/splitter-south.png"
spli_r2.structure.west.filename = "__RExtended__/graphics/entity/transport-belts/r2/splitter/splitter-west.png"

spli_r2.structure.north.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r2/splitter/hr-splitter-north.png"
spli_r2.structure.east.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r2/splitter/hr-splitter-east.png"
spli_r2.structure.south.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r2/splitter/hr-splitter-south.png"
spli_r2.structure.west.hr_version.filename = "__RExtended__/graphics/entity/transport-belts/r2/splitter/hr-splitter-west.png"

data:extend({spli_r2_item,spli_r2_recipe,spli_r2})