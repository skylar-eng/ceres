minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

minetest.register_biome({
    name = 'ceres_ice',
    node_dust = "default:snow",
    node_top = 'default:silver_sand',
    depth_top = 5,
    node_filler = 'default:ice',
    depth_filler = 12,
    node_stone = 'default:stone',
    node_water_top = 'default:ice',
    node_water = 'default:ice',
    y_max = 1024,
    y_min = -1024,
    vertical_blend = 12,
    heat_point = 0,
    humidity_point = 0,
})

minetest.register_biome({
    name = 'ceres_rock',
    node_top = 'default:gravel',
    depth_top = 10,
    node_filler = 'default:ice',
    depth_filler = 12,
    node_stone = 'default:stone',
    node_water_top = 'default:ice',
    node_water = 'default:ice',
    y_max = 1024,
    y_min = -1024,
    vertical_blend = 12,
    heat_point = 10,
    humidity_point = 0,
})


minetest.register_biome({
    name = 'ceres_lowlands',
    node_top = 'default:silver_sand',
    depth_top = 10,
    node_filler = 'default:ice',
    depth_filler = 12,
    node_stone = 'default:stone',
    node_water_top = 'default:ice',
    node_water = 'default:ice',
    y_max = 0,
    y_min = -1024,
    vertical_blend = 12,
    heat_point = 15,
    humidity_point = 0,
})


minetest.register_biome({
    name = 'ceres_mountains',
    node_top = 'default:stone',
    depth_top = 10,
    node_filler = 'default:stone',
    depth_filler = 12,
    node_stone = 'default:stone',
    node_water_top = 'default:ice',
    node_water = 'default:ice',
    y_max = 1024,
    y_min = 10,
    vertical_blend = 12,
    heat_point = 0,
    humidity_point = 5,
})


minetest.register_on_joinplayer(function(player)
player:set_physics_override({
    gravity = 0.09,
})

player:set_sky({
    base_color = '#000000',
    type = 'plain',
    clouds = false,
})

player:set_stars({
    visible = true,
    count = 65535,
})

player:set_sun({
    visible = true,
    scale = 0.33,
})

player:set_moon({
    visible = false,
})

player:override_day_night_ratio(0.5)

end)




minetest.register_ore({
    ore_type       = "scatter",
    ore            = "default:stone_with_tin",
    wherein        = "default:gravel",
    clust_scarcity = 7*7*7,
    clust_num_ores = 8,
    clust_size     = 3,
    height_min     = -255,
    height_max     = 255,
 })

 minetest.register_ore({
    ore_type       = "scatter",
    ore            = "default:stone_with_tin",
    wherein        = "default:silver_sand",
    clust_scarcity = 7*7*7,
    clust_num_ores = 8,
    clust_size     = 3,
    height_min     = -255,
    height_max     = 255,
 })

 minetest.register_ore({
    ore_type       = "scatter",
    ore            = "default:stone_with_mese",
    wherein        = "default:gravel",
    clust_scarcity = 8*8*9
    clust_num_ores = 4
    clust_size     = 3,
    height_min     = -255,
    height_max     = 255,
 })

 minetest.register_ore({
    ore_type       = "scatter",
    ore            = "default:stone_with_tin",
    wherein        = "default:silver_sand",
    clust_scarcity = 7*7*7,
    clust_num_ores = 8,
    clust_size     = 3,
    height_min     = -255,
    height_max     = 255,
 })
