/// @description 

rain_system = part_system_create()
rain_emitter = part_emitter_create(rain_system)
rain_type = part_type_create()

part_type_sprite(rain_type, spr_water_particle, false, 0, false)
part_type_gravity(rain_type, .2, 310)
part_type_life(rain_type, room_speed*1.5, room_speed*3)
part_type_alpha3(rain_type, 0.8, .5, .3)
part_type_color3(rain_type, c_gray, c_navy, c_blue)
part_type_orientation(rain_type, -5, 5, 0, 1, 0)

part_emitter_region(rain_system,rain_emitter, 0, room_width, -10, room_height, ps_shape_rectangle, ps_distr_linear)

audio_play_sound(rain_03,100,0)
alarm[0] = (audio_sound_length(rain_03) - 1) * room_speed