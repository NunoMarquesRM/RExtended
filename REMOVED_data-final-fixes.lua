if(settings.startup["alternative-science-r1"].value == 'Yes') then
	data:extend({
	--RECIPE
		{--Wood Gear Wheel
			type = "recipe",
			name = "wood-gear-wheel-r1",
			icon = "__RExtended__/graphics/icons/bio-red/wood-gear-wheel-r1.png",
			icon_size = 32,
			energy_required = 0.5,
			enabled = true,
			ingredients = {{"wood-plate-r1", 2}},
			results = {
				{"wood-gear-wheel-r1",1},
				{"sawdust-r1",2},
			},
			subgroup = "bio-red-products",
			order = "m-b-c",
		},
		{--Wood Brick
			type = "recipe",
			name = "wood-brick-r1",
			icon = "__RExtended__/graphics/icons/bio-red/wood-brick-r1.png",
			icon_size = 32,
			energy_required = 1,
			enabled = true,
			ingredients = {{"wood-plate-r1", 2}},
			results = {
				{"wood-brick-r1",1},
				{"sawdust-r1",1},
			},
			subgroup = "bio-red-products",
			order = "m-b-d",
		},
		{--Coal Piece
			type = "recipe",
			name = "coal-piece-r1",
			icon = "__RExtended__/graphics/icons/bio-red/coal-piece-r1.png",
			icon_size = 32,
			energy_required = 2,
			ingredients = {{"coal", 1}},
			enabled = true,
			results = {{"coal-piece-r1", 4}},
			subgroup = "bio-red-products-r1",
			order = "n-a-a",
		},
		{--Small Pole 2
			type = "recipe",
			name = "small-pole-r1-2",
			icon = "__RExtended__/graphics/icons/poles/small-electric-pole-r1.png",
			icon_size = 64, 
			icon_mipmaps = 4,
			energy_required = 1,
			enabled = true,
			ingredients =  {
				{"wood-gear-wheel-r1", 1},
				{"resin-r1", 1},
				{"copper-cable",1}
			},
			order = "a-a-b",
			result = "small-pole-r1",
			result_count = 2,
		},
	--ITENS
		{--Wood Gear Wheel
			type = "item",
			name = "wood-gear-wheel-r1",
			icon = "__RExtended__/graphics/icons/bio-red/wood-gear-wheel-r1.png",
			icon_size = 32,
			subgroup = "bio-red-products",
			order = "m-b-c",
			stack_size = 100
		},
		{--Wood Brick
			type = "item",
			name = "wood-brick-r1",
			icon = "__RExtended__/graphics/icons/bio-red/wood-brick-r1.png",
			icon_size = 32,
			subgroup = "bio-red-products",
			order = "m-b-d",
			stack_size = 200
		},
		{--Coal Piece
			type = "item",
			name = "coal-piece-r1",
			icon = "__RExtended__/graphics/icons/bio-red/coal-piece-r1.png",
			icon_size = 32,
			subgroup = "bio-red-products-r1",
			order = "n-a-a",
			stack_size = 100
		},
		{
			type = "recipe",
			name = "automation-science-pack-r1",
			energy_required = 5,
			ingredients = {
				{"wood-brick-r1", 1},
				{"resin-r1", 1},
				{"coal-piece-r1", 1}
			},
			result = "automation-science-pack",
			result_count = 5,
			subgroup = "red-science-packs",
			order = "t-a",
		},
		--[[
		{
			type = "recipe",
			name = "logistic-science-pack",
			enabled = false,
			energy_required = 6,
			ingredients =
			{
			  {"inserter", 1},
			  {"transport-belt", 1}
			},
			result = "logistic-science-pack"
		  },
		]]
	})
end

-- generate flare recipe for every fluid
for ki, vi in pairs(data.raw.fluid) do
	local newicons
	if vi.iconsize ~= 32 then
		newicons = {}
	elseif vi.icons then
		newicons = table.deepcopy(vi.icons)
	else
		newicons = {{icon = vi.icon}}
	end
	table.insert(newicons, {icon = "__RExtended__/graphics/icons/incinerator/no.png"})
	data:extend({
		{
			type = "recipe",
			name = vi.name.."-flaring",
			category = "flaring",
			enabled = true,
			hidden = true,
			energy_required = 1,
			ingredients = {
				{type="fluid", name=vi.name, amount=1}
			},
			results = { },
			icons = newicons,
			icon_size = 32,
			subgroup = "fluid-recipes",
			order = "z[incineration]"
		}
	})
end

function incinerateRecipe(item, category, craft_category)
	local newicons
	if item.icon_size ~= 32 then
		newicons = {}
	elseif item.icons then
		newicons = table.deepcopy(item.icons)
	else
		newicons = {{icon = item.icon}}
	end
	table.insert(newicons, {icon = "__RExtended__/graphics/icons/incinerator/no.png"})
	data:extend({
		{
			type = "recipe",
			name = category.."-"..item.name.."-incineration",
			category = craft_category,
			enabled = true,
			hidden = true,
			energy_required = 0.5,
			ingredients = {
				{item.name, 1}
			},
			results = { },
			icons = newicons,
			icon_size = 32,
			subgroup = "fluid-recipes",
			order = "zz[incineration]"
		}
	})
end

-- Get fuel value for coal if it exists, else default to vanilla value
if data.raw.item["coal"] and data.raw.item["coal"].fuel_value then
	coal_value = data.raw.item["coal"].fuel_value
else
	coal_value = "4MJ"
end

for ki, vi in pairs(data.raw.item) do
	-- create incineration recipe for any item, and any chemical fuel with less energy than coal
	if not (vi.fuel_value and vi.fuel_category and vi.fuel_category == "chemical") then
		incinerateRecipe(vi, "item", "incineration")
	elseif vi.name ~= "wood" then
		incinerateRecipe(vi, "item", "fuel-incineration")
	end
end

incinerateRecipe(data.raw["item"]["wood"], "item", "incineration")

category_list = {
	"capsule",
	"ammo",
	"gun",
	"module",
	"armor",
	"mining-tool",
	"repair-tool"
}
for _, c in pairs(category_list) do
	for _, i in pairs(data.raw[c]) do
		incinerateRecipe(i, c, "incineration")
	end
end