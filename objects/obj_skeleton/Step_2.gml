/// @description Animation

//need to fix this up a bit
if (!dead){
	if(x_speed>0) sprite_index = spr_skeleton_r
	else if(x_speed<0) sprite_index = spr_skeleton_l
	else if(y_speed>0) sprite_index = spr_skeleton_d
	else if(y_speed<0) sprite_index = spr_skeleton_u
}