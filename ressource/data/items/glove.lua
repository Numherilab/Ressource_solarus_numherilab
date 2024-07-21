local item = ...

function item:on_created()
item:set_savegame_variable("possession_" .. item:get_name())
end

function item:on_variant_changed(variant)
  -- the possession state of the glove determines the built-in ability "lift"
  self:get_game():set_ability("lift", variant)
end