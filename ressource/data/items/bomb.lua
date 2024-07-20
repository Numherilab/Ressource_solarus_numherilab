-- Bombs item.
local item = ...

local game = item:get_game()

function item:on_created()

  item:set_can_disappear(true)
  item:set_brandish_when_picked(true)
end

function item:on_obtaining(variant, savegame_variable)

  -- Obtaining bombs increases the bombs counter.
  local amounts = {1, 3, 8}
  local amount = amounts[variant]
  if amount == nil then
    error("Invalid variant '" .. variant .. "' for item 'bomb'")
  end
  game:get_item("bomb_counter"):add_amount(amount)
end
