/// @description 

fire_system = part_system_create()
fire_emitter = part_emitter_create(fire_system)
fire_type = part_type_create()

//part_type_sprite(fire_type, spr_water_part, false, false, false)
part_system_depth(fire_system, obj_torch.depth-2)
//gravity in torch obj
part_type_life(fire_type, room_speed*.15, room_speed*.4)
part_type_scale(fire_type, .15, .15)
part_type_size(fire_type, .55, .55, -.01, -.01)
part_type_shape(fire_type, pt_shape_square)
part_type_alpha3(fire_type, 0, 1, 0)
part_type_color3(fire_type, c_white, c_yellow, c_red)
part_type_orientation(fire_type, -15, 15, 0, 2, 0)
//part region in torch obj

alarm[0] = 2