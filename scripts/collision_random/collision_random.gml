///@arg self
//player collision for randomly-generated rooms

var object = argument0
with(object){
	if (obj_game_control.game_state == 2){
		var x_predict = x + x_speed
		var y_predict = y + y_speed
	
		//horizontal
		if (!place_meeting(x_predict,y,obj_collidable)){
			x += x_speed
			if (x_speed > 0) { //right
				if (grid_collide(self,obj_level_generator.grid)){
					x = bbox_right&~(CELL_WIDTH-1)
					x -= bbox_right-x+1
					x_speed = 0
				}
			}
			else if (x_speed < 0) { //left
				if (grid_collide(self,obj_level_generator.grid)){
					x = bbox_left&~(CELL_WIDTH-1)
					x += CELL_WIDTH+x-bbox_left+1
					x_speed = 0
				}
			}
		}
		else {
			x_predict = x
			while (!place_meeting(x_predict,y,obj_collidable)){
				x_predict += sign(x_speed)
			}
			x = x_predict - sign(x_speed)
		}
	
		//vertical
		if (!place_meeting(x,y_predict,obj_collidable)){
			y += y_speed	
			if(y_speed > 0){ //down
				if (grid_collide(self,obj_level_generator.grid)){
					y = bbox_bottom&~(CELL_HEIGHT-1)
					y -= bbox_bottom-y + 1
					y_speed = 0
				}
			} 
			else if (y_speed < 0){ //up
				if (grid_collide(self,obj_level_generator.grid)){
					y = bbox_top&~(CELL_HEIGHT-1)
					y += CELL_HEIGHT+y-bbox_top +1
					y_speed = 0
				}
			}
		}
		else {
			y_predict = y
			while (!place_meeting(x,y_predict,obj_collidable) ){
				y_predict += sign(y_speed)
			}
			y = y_predict - sign(y_speed)
		}
	}
}