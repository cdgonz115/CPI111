/// @description animation

//animation
if (x_input ==0 && y_input == 0){
	image_speed = 0
	image_index = 0
	}
else
	image_speed = 0.7
	
//if(point_direction(x,y,mouse_x,mouse_y) )
var mouse_dir = point_direction(x,y,mouse_x,mouse_y)
if(mouse_dir<45 || mouse_dir>315) sprite_index = spr_player_walk_r2; //right
else if(mouse_dir<135 && mouse_dir>45) sprite_index = spr_player_walk_u2; //up
else if(mouse_dir<225 && mouse_dir>135) sprite_index = spr_player_walk_l2; //left
else if(mouse_dir<315 && mouse_dir>225) sprite_index = spr_player_walk_d2; //down