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
	{type = "item", name = "wood-plate-r1", amount = 2}
}
tb_r1_recipe.results = {{type="item", name="transport-belt-r1", amount=1}}

local transport_r1 = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
transport_r1.name = "transport-belt-r1"
transport_r1.icon = "__RExtended__/graphics/icons/transport-belts/transport-belt-r1.png"
transport_r1.icon_size = 32
transport_r1.minable.result = "transport-belt-r1"
transport_r1.belt_animation_set.animation_set.filename = "__RExtended__/graphics/entity/transport-belts/r1/r1.png"

local un_belt_r1 = table.deepcopy(data.raw.recipe['underground-belt'])
un_belt_r1.name = "underground-belt-r1"
un_belt_r1.ingredients = {
	{type = "item", name = "transport-belt-r1", amount = 5},
	{type = "item", name = "iron-plate", amount = 10}
}
un_belt_r1.results = {{type="item", name="underground-belt-r1", amount=1}}
un_belt_r1.subgroup = "re-belts"
un_belt_r1.order = "h-a-b"

local splitter_r1 = table.deepcopy(data.raw.recipe['splitter'])
splitter_r1.name = "splitter-r1"
splitter_r1.ingredients = {
	{type = "item", name = "electronic-circuit", amount = 5},
	{type = "item", name = "iron-plate", amount = 5},
	{type = "item", name = "transport-belt-r1", amount = 4}
}
splitter_r1.results = {{type="item", name="splitter-r1", amount=1}}
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
	{type = "item", name = "underground-belt-r1", amount = 2},
	{type = "item", name = "iron-gear-wheel", amount = 40}
}
un_belt_bug.results = {{type="item", name="fast-underground-belt", amount=1}}
un_belt_bug.subgroup = "re-belts"
un_belt_bug.order = "h-a-d"

local splitter_bug = table.deepcopy(data.raw.recipe['fast-splitter'])
splitter_bug.name = "splitter-bug"
splitter_bug.ingredients = {
	{type = "item", name = "electronic-circuit", amount = 10},
	{type = "item", name = "iron-gear-wheel", amount = 10},
	{type = "item", name = "splitter-r1", amount = 1}
}
splitter_bug.results = {{type="item", name="fast-splitter", amount=1}}
splitter_bug.subgroup = "re-belts"
splitter_bug.order = "h-a-e"

data:extend({un_belt_bug, splitter_bug})