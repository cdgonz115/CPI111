/// @description Animation

//need to change to be based on direction
if (!dead && point_distance(x, y, obj_player.x, obj_player.y) <= obj_player.aggro_rad+50){
	var dir = point_direction(obj_player.x, obj_player.y, x, y)
	if(dir<45 || dir>315) sprite_index = spr_skeleton_l
	else if(dir<135 && dir>45) sprite_index = spr_skeleton_d
	else if(dir<225 && dir>135) sprite_index = spr_skeleton_r
	else if(dir<315 && dir>225) sprite_index = spr_skeleton_u
}