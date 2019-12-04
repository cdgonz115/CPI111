/// @description animation

//animation
if(!talking && !dead){
	if(!rolling){
		if (x_input ==0 && y_input == 0){
			image_speed = 0.2
			//image_index = 0
			}
		else
			image_speed = 0.6
	
		depth = -y
		//if(instance_exists(obj_helmet))
		//	obj_helmet.depth = depth-1
		//if(point_direction(x,y,mouse_x,mouse_y) )
		var mouse_dir = point_direction(x,y,mouse_x,mouse_y)
		if(mouse_dir<45 || mouse_dir>315) {sprite_index = side; image_xscale = 1;}//right
		else if(mouse_dir<135 && mouse_dir>45) sprite_index = up; //up
		else if(mouse_dir<225 && mouse_dir>135) {sprite_index = side; image_xscale = -1;} //left
		else if(mouse_dir<315 && mouse_dir>225) sprite_index = down; //down
	}
	else {
		if(x_speed >0) image_xscale = 1
		else image_xscale = -1
	}
}