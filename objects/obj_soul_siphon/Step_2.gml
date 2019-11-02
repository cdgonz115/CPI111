/// @description

if(target != noone){
	if(target.hp = 0){
		obj_player_warlock.siphoning = false
		instance_destroy()
	}
	var mouse_dir = point_direction(target.x,target.y,obj_player.x,obj_player.y)
	image_angle = mouse_dir
	var stretch = point_distance(target.x,target.y,obj_player.x,obj_player.y)
	image_xscale = stretch / 32
	x = target.x
	y = target.y
}