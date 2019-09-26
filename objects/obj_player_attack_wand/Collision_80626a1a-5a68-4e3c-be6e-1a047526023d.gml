/// @description hits an enemy
if(!other.dead){
	var mouse_dir = point_direction(x,y,mouse_x,mouse_y)
	var xx = lengthdir_x(sprite_width,mouse_dir)
	var yy = lengthdir_y(sprite_height,mouse_dir)
	instance_create_layer(x,y,"Instances",obj_damage)
	with(obj_damage){
		damage = obj_player_wand.damage
		knockback = obj_player_wand.damage
		image_xscale = 1.5
		image_yscale = 1.5
		alarm[0] = 2
	}
	instance_destroy()
}