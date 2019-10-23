///@arg self
//player collision for non-randomly generated rooms

var object = argument0
with(object){
	if(obj_game_control.game_state==1){
		var bbox_side;
		
		//horizontal
		if(x_speed > 0) bbox_side = bbox_right; 
		else bbox_side = bbox_left;
	
		if (tilemap_get_at_pixel(tilemap,bbox_side+x_speed+sign(x_speed),bbox_top)!=0 || tilemap_get_at_pixel(tilemap,bbox_side+x_speed+sign(x_speed),bbox_bottom)!=0){
			/*
			if(x_speed>0) {
				x = x - (x % 16) + 15 - (bbox_right - x);
			}
			else {
				x = x - (x % 16) - (bbox_left - x)
			}*/
			x_speed = 0
		}
		x+=x_speed
	
		//vertical
		if(y_speed > 0) bbox_side = bbox_bottom; 
		else bbox_side = bbox_top;
		
		if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+y_speed+sign(y_speed))!=0 || tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+y_speed+sign(y_speed))!=0){
			//top
			/*
			if(y_speed>0) {
				//y = y - (y % 16) + 15 - (bbox_bottom - y)
			}
			//bottom
			else {
				//y = y + (bbox_top - y -1)
			}*/
			y_speed = 0
		}
		y+=y_speed
	}
}