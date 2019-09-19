/// @description Insert description here
// You can write your code in this editor

x = obj_player.x
y = obj_player.y

if (obj_player.x_input ==0 && obj_player.y_input == 0){
	image_speed = 0
	image_index = 0
	}
else
	image_speed = 0.7
	
var mouse_dir = point_direction(x,y,mouse_x,mouse_y)
if(mouse_dir<45 || mouse_dir>315) sprite_index = spr_helmet1_r; //right
else if(mouse_dir<135 && mouse_dir>45) sprite_index = spr_helmet1_u; //up
else if(mouse_dir<225 && mouse_dir>135) sprite_index = spr_helmet1_l; //left
else if(mouse_dir<315 && mouse_dir>225) sprite_index = spr_helmet1_d; //down