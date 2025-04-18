data:extend({
--RECIPE
{--Seeds
	type = "recipe",
	name = "seeds-r1",
	icon = "__RExtended__/graphics/icons/bio-red/seeds-r1.png",
	icon_size = 64,
	energy_required = 10,
	ingredients = {{type="item", name="wood", amount=2}},
	enabled = true,
	results = {
		{type = "item", name = "seeds-r1", amount = 25},
		{type = "item", name = "resin-r1", amount = 5}
	},
	subgroup = "bio-red-products",
	order = "m-a-a",
},
{--Log
	type = "recipe",
	name = "log-r1",
	icon = "__RExtended__/graphics/icons/bio-red/log-r1.png",
	icon_size = 64,
	energy_required = 30,
	category = "crafting-with-fluid",
	ingredients = {
		{type = "item", name = "seeds-r1", amount = 10},
		{type = "fluid", name="water" , amount = 500}
	},
	enabled = true,
	results = {{type="item", name="log-r1", amount=2}},
	subgroup = "bio-red-products",
	order = "m-a-c",
},
{--Wood
	type = "recipe",
	name = "wood-r1",
	icon = "__base__/graphics/icons/wood.png",
	icon_size = 64,
	icon_mipmaps = 4,
	energy_required = 10,
	ingredients = {{type = "item", name = "log-r1", amount = 1}},
	enabled = true,
	results = {
		{type = "item", name = "wood", amount = 4},
		{type = "item", name = "resin-r1", amount = 2},
		{type = "item", name = "sawdust-r1", amount = 2}
	},
	subgroup = "bio-red-products",
	order = "m-a-d",
},
{--Wood Plate
	type = "recipe",
	name = "wood-plate-r1",
	energy_required = 1,
	ingredients = {{type = "item", name = "wood", amount = 4}},
	enabled = true,
	results = {{type="item", name="wood-plate-r1", amount=1}},
},
--ITEM
{--Seeds
	type = "item",
	name = "seeds-r1",
	icon = "__RExtended__/graphics/icons/bio-red/seeds-r1.png",
	icon_size = 64,
	subgroup = "bio-red-products",
	order = "m-a-a",
	stack_size = 200
},
{--Resin
	type = "item",
	name = "resin-r1",
	icon = "__RExtended__/graphics/icons/bio-red/resin-r1.png",
	icon_size = 32,
	subgroup = "bio-red-products",
	order = "m-a-b",
	stack_size = 100
},
{--Log
	type = "item",
	name = "log-r1",
	icon = "__RExtended__/graphics/icons/bio-red/log-r1.png",
	icon_size = 64,
	subgroup = "bio-red-products",
	order = "m-a-c",
	stack_size = 200
},
{--Wood Plate
	type = "item",
	name = "wood-plate-r1",
	icon = "__RExtended__/graphics/icons/bio-red/wood-plate-r1.png",
	icon_size = 32,
	subgroup = "bio-red-products",
	order = "m-b-a",
	stack_size = 200
},
{--Sawdust
	type = "item",
	name = "sawdust-r1",
	icon = "__RExtended__/graphics/icons/bio-red/sawdust-r1.png",
	icon_size = 64,
	subgroup = "bio-red-products",
	order = "m-b-b",
	stack_size = 200
},
})