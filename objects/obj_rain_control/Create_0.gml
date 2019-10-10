/// @description 

rain_system = part_system_create()
rain_emitter = part_emitter_create(rain_system)
rain_type = part_type_create()

//part_type_sprite(rain_type, spr_water_part, false, false, false)
part_type_gravity(rain_type, .1, 270)
part_type_life(rain_type, room_speed*1.5, room_speed*3)
part_type_alpha3(rain_type, 0.9, .75, .5)
part_type_color3(rain_type, c_gray, c_navy, c_blue)
part_type_orientation(rain_type, -15, 15, 0, 2, 0)

part_emitter_region(rain_system,rain_emitter, 0, room_width, -100, -100, ps_shape_rectangle, ps_distr_linear)