/// @description

if(instance_exists(target) && target != noone){
	if(target.hp <= 0 || !line_of_sight(obj_player.x,obj_player.y,target.x,target.y)
	|| point_distance(obj_player.x,obj_player.y,target.x,target.y) > 90){
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