local khaoslib_item = require("__khaoslib__.item")
local khaoslib_recipe = require("__khaoslib__.recipe")

local frozen_goodies = {
  {
    name = "fg-frozen-agricultural-science-pack",
    icon = "__space-age__/graphics/icons/agricultural-science-pack.png",
    scale = 0.35,
    shift = {0, -2},
  },
  {
    name = "fg-frozen-bioflux",
    icon = "__space-age__/graphics/icons/bioflux.png",
    scale = 0.35,
    shift = {0, -3},
  },
  {
    name = "fg-frozen-biter-egg",
    icon = "__space-age__/graphics/icons/biter-egg.png",
    scale = 0.4,
    shift = {0, -3},
  },
  {
    name = "fg-frozen-fish",
    icon = "__base__/graphics/icons/fish.png",
    scale = 0.35,
    shift = {0, -2},
  },
  {
    name = "fg-frozen-jelly",
    icon = "__space-age__/graphics/icons/jelly.png",
    scale = 0.35,
    shift = {0, -3},
  },
  {
    name = "fg-frozen-jellynut",
    icon = "__space-age__/graphics/icons/jellynut.png",
    scale = 0.35,
    shift = {0, -3},
  },
  {
    name = "fg-frozen-nutrients",
    icon = "__space-age__/graphics/icons/nutrients.png",
    scale = 0.4,
    shift = {0, -3},
  },
  {
    name = "fg-frozen-pentapod-egg",
    icon = "__space-age__/graphics/icons/pentapod-egg.png",
    scale = 0.35,
    shift = {0, -3},
  },
  {
    name = "fg-frozen-yumako",
    icon = "__space-age__/graphics/icons/yumako.png",
    scale = 0.35,
    shift = {0, -2},
  },
  {
    name = "fg-frozen-yumako-mash",
    icon = "__space-age__/graphics/icons/yumako-mash.png",
    scale = 0.35,
    shift = {0, -3},
  },
}

for _, goodie in pairs(frozen_goodies) do
  khaoslib_item:load(goodie.name)
    :clear_icons()
    :add_icon {icon = "__space-age__/graphics/icons/ice.png", icon_size = 64}
    :add_icon {icon = goodie.icon, icon_size = 64, scale = goodie.scale, shift = goodie.shift}
    :add_icon {icon = "__frozen-goodies-base-assets__/graphics/icons/ice-open.png", icon_size = 64}
    :commit()

  khaoslib_recipe:load(goodie.name .. "-melt")
    :clear_icons()
    :add_icon {icon = "__space-age__/graphics/icons/ice.png", icon_size = 64}
    :add_icon {icon = goodie.icon, icon_size = 64, scale = goodie.scale, shift = goodie.shift}
    :add_icon {icon = "__frozen-goodies-base-assets__/graphics/icons/ice-open.png", icon_size = 64}
    :add_icon {icon = "__frozen-goodies-base-assets__/graphics/icons/fire.png", icon_size = 64, scale = 0.3, shift = {-10, -10}}
    :commit()
end
