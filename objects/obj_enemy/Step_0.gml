/// @description Collision

//collision with map
var speed_ = point_distance(0,0,x_speed,y_speed)
var direction_ = point_direction(0,0,x_speed,y_speed)
if (speed_ > max_speed) {
	x_speed = lengthdir_x(max_speed, direction_)
	y_speed = lengthdir_y(max_speed, direction_)
}

x += x_speed
if (x_speed > 0){ //right
	if (grid_collide(self,obj_level_generator.grid)){
		x = bbox_right&~(CELL_WIDTH-1)
		x -= bbox_right-x
		x_speed = 0
	}
} else if (x_speed < 0){ //left
	//image_xscale = -1
	if (grid_collide(self,obj_level_generator.grid)){
		x = bbox_left&~(CELL_WIDTH-1)
		x += CELL_WIDTH+x-bbox_left + 1
		x_speed = 0
	}
}

y+= y_speed
if (y_speed > 0){ //down
	if (grid_collide(self,obj_level_generator.grid)){
		y = bbox_bottom&~(CELL_HEIGHT-1)
		y -= bbox_bottom-y + 1
		y_speed = 0
	}
} else if (y_speed < 0){ //up
	if (grid_collide(self,obj_level_generator.grid)){
		y = bbox_top&~(CELL_HEIGHT-1)
		y += CELL_HEIGHT+y-bbox_top
		y_speed = 0
	}
}