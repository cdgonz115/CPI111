/// @description Movement/Collision with walls

//movement controls
key_right = keyboard_check(ord("F"))
key_left = keyboard_check(ord("S"))
key_up = keyboard_check(ord("E"))
key_down = keyboard_check(ord("D"))

var x_input = key_right - key_left
var y_input = key_down - key_up

var speed_ = point_distance(0,0,x_speed,y_speed)
var direction_ = point_direction(0,0,x_speed,y_speed)
if (speed_ > max_speed) {
	x_speed = lengthdir_x(max_speed, direction_)
	y_speed = lengthdir_y(max_speed, direction_)
}

x_speed += (x_input) * acceleration
y_speed += (y_input) * acceleration

if(x_input ==0)
	x_speed = lerp(x_speed,0,0.2)
	
if(y_input ==0)
	y_speed = lerp(y_speed,0,0.2)
	
//animation
if (x_input ==0 && y_input == 0){
	image_speed = 0
	image_index = 0
	}
else
	image_speed = 0.7
	
//if(point_direction(x,y,mouse_x,mouse_y) )
var mouse_dir = point_direction(x,y,mouse_x,mouse_y)
if(mouse_dir<45 || mouse_dir>315) sprite_index = spr_player_walk_r2;
else if(mouse_dir<135 && mouse_dir>45) sprite_index = spr_player_walk_u2;
else if(mouse_dir<225 && mouse_dir>135) sprite_index = spr_player_walk_l2;
else if(mouse_dir<315 && mouse_dir>225) sprite_index = spr_player_walk_d2;
	
//collision
//for non-randomly generated rooms
if(obj_game_control.game_state==1){
	var bbox_side;
	
	//horizontal
	//right
	if(x_speed > 0) bbox_side = bbox_right; 
	else bbox_side = bbox_left;
	
	if (tilemap_get_at_pixel(tilemap,bbox_side+x_speed+sign(x_speed),bbox_top)!=0 || tilemap_get_at_pixel(tilemap,bbox_side+x_speed+sign(x_speed),bbox_bottom)!=0){
		if(x_speed>0) {
			x = x - (x % 16) + 15 - (bbox_right - x);
		}
		else {
			x = x - (x % 16) - (bbox_left - x)
		}
		x_speed = 0
	}
	x+=x_speed
	//if(x_speed>0) sprite_index = spr_player_walk_r; else if (x_speed <0) sprite_index = spr_player_walk_l;
	
	//vertical
	if(y_speed > 0) bbox_side = bbox_bottom; 
	else bbox_side = bbox_top;
	
	if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+y_speed+sign(y_speed))!=0 || tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+y_speed+sign(y_speed))!=0){
		if(y_speed>0) {
			y = y - (y % 16) + 15 - (bbox_bottom - y)
		}
		else {
			y = y - (y % 16) - (bbox_top - y)
		}
		y_speed = 0
	}
	y+=y_speed
	//if(y_speed>0) sprite_index = spr_player_walk_d; else if (y_speed <0) sprite_index = spr_player_walk_u;
}

//for randomly generated rooms
else {
	x += x_speed

	if (x_speed > 0) { //right
		//sprite_index = spr_player_walk_r
		if (grid_collide(self,obj_level_generator.grid)){
			x = bbox_right&~(CELL_WIDTH-1)
			x -= bbox_right-x
			x_speed = 0
		}
	} else if (x_speed < 0) { //left
		//sprite_index = spr_player_walk_l
		if (grid_collide(self,obj_level_generator.grid)){
			x = bbox_left&~(CELL_WIDTH-1)
			x += CELL_WIDTH+x-bbox_left
			x_speed = 0
		}
	}

	y+= y_speed

	if (y_speed > 0){ //down
		//sprite_index = spr_player_walk_d
		if (grid_collide(self,obj_level_generator.grid)){
			y = bbox_bottom&~(CELL_HEIGHT-1)
			y -= bbox_bottom-y + 1
			y_speed = 0
		}
	} else if (y_speed < 0){ //up
		//sprite_index = spr_player_walk_u
		if (grid_collide(self,obj_level_generator.grid)){
			y = bbox_top&~(CELL_HEIGHT-1)
			y += CELL_HEIGHT+y-bbox_top
			y_speed = 0
		}
	}
}
