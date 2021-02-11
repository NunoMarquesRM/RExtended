if(settings.startup["robots-help"].value == "Yes") then

	script.on_event(defines.events.on_player_created, function(event)
		local iteminsert = game.players[event.player_index].insert
		iteminsert{name="initial-robot", count=10}

		iteminsert{name="initial-controller", count=1}
		
		iteminsert{name="solar-panel-equipment-r2", count=6}
		
		iteminsert{name="battery-mk2-equipment", count=1}

		local player = game.players[event.player_index]
		if (not player.character or not player.get_inventory(5)) then
			return
		end
		local p_armor = player.get_inventory(5)[1].grid
		p_armor.put({name = "initial-roboport"})
	end)

else
	
end

script.on_event(defines.events.on_player_selected_area, function(event)
	local player = game.players[event.player_index]
	local item = event.item
	local entities = event.entities
	
	if item == "tree-eraser" then
		for _,entity in ipairs(entities) do
			if entity.type == "tree" then
				entity.destroy()
			end
		end
	end
end)

script.on_event(defines.events.on_player_dropped_item, function(event)
	if event.entity ~= nil then
		if event.entity.stack ~= nil then
			if event.entity.stack.name == "tree-eraser" then
				event.entity.stack.clear()
			end
		end
	end
end)