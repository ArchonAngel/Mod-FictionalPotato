script.on_event(defines.events.on_player_created, function(event)
   local player = game.players[event.player_index]
   if player.name == "button-creation-test-player" then
     player.gui.top.add{type="button", name="test_button", caption = "Hello world"}
   end
end)

script.on_event(defines.events.on_resource_depleted, function(event)
    game.players[1].print(event.entity.name)
    if event.entity.name == "stone" then
      event.entity.amount = 1
    end
end)
