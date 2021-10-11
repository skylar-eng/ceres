minetest.clear_registered_biomes(),
minetest.clear_registered_decorations(),

minetest.register_biome({
    name = 'ceres',
    node_dust = "default:snow",
    node_top = 'default:silver_sand',
    depth_top = 2,
    node_filler = 'default:ice',
    depth_filler = 12,
    node_stone = 'default:stone',
    node_water_top = 'default:water',
    node_water = 'default:ice',
    y_max = 1024,
    y_min = -1024,
    vertical_blend = 12,
    heat_point = 0,
    humidity_point = 0,
})

set_physics_override({
    gravity = 0.03
})

set_sky({
    base_color = '#000000',
    type = 'plain',
    clouds = 'false',
})
