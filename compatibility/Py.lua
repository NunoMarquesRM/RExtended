
if mods["pyhightech"] then

data:extend({
{
    type = 'recipe',
    name = 'clay-r1',
    category = 'clay',
    enabled = true,
    energy_required = 4,
	subgroup = "others",
	order = "j-a",
	category = "red-enrichment-chamber",
    ingredients = {
        {type = 'fluid', name = 'steam', amount = 100, temperature = 60}
    },
    results = {
        {type = 'item', name = 'clay', amount = 3}
    },
},
{--Clay
	type = "item-subgroup",
	name = "others",
	group = "power-extends",
	order = "j",
},
})
end
