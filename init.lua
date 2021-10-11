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
    node_water = 'default:air',
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

end)
