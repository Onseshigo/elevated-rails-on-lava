if settings.startup["elevated-rails-on-lava-technology-effect-icon"].value then
  table.insert(
    data.raw.technology["rail-support-foundations"].effects,
    {
      type = "nothing",
      effect_description = {"modifier-description.rail-support-on-lava"},
      icon = "__elevated-rails-on-lava__/graphics/icons/technology/effect/effect-rail-support-on-lava.png",
      icon_size = 64,
    }
  )
end