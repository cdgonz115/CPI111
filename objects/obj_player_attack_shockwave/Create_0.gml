/// @description 
//x = obj_player.x
//y = obj_player.y

var mouse_dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
//var xx = lengthdir_x(sprite_width,mouse_dir)
//var yy = lengthdir_y(sprite_height,mouse_dir)

knockback = 10
damage = obj_player.damage

instance_create_layer(x,y,"Instances",obj_damage)
obj_damage.image_xscale = 2
obj_damage.image_yscale = .5
obj_damage.image_angle = mouse_dir
obj_damage.damage = damage
obj_damage.knockback = knockback
obj_damage.owner = obj_player
//range
	//global.dmg.image_xscale = 1
	//global.dmg.image_yscale = 1

