/// @description Movement/Collision with walls

if(hp <= 0){
	obj_game_control.game_state = -1
}

//if(obj_game_control.game_state != -1){ //game over
//level check
if(exp_ >= exp_to_level && (exp_ > 0)){
		level_ ++
		exp_ = exp_ % exp_to_level
		exp_to_level = power(2,level_) * 50
		instance_create_layer(x,y-CELL_HEIGHT/2,"Instances",obj_lvl_up)
}
//mana regen
if(mana < max_mana) 
	mana+= mana_regen/room_speed
//hp regen? probly not cuz hp items like potions

//movement controls
key_right = keyboard_check(ord("F"))
key_left = keyboard_check(ord("S"))
key_up = keyboard_check(ord("E"))
key_down = keyboard_check(ord("D"))

x_input = key_right - key_left
y_input = key_down - key_up

var speed_ = point_distance(0,0,x_speed,y_speed)
var direction_ = point_direction(0,0,x_speed,y_speed)
if (speed_ > max_speed) {
	x_speed = lengthdir_x(max_speed, direction_)
	y_speed = lengthdir_y(max_speed, direction_)
}

x_speed = (x_input) * acceleration//
y_speed = (y_input) * acceleration
//friction
if(x_input ==0)
	x_speed = lerp(x_speed,0,0.2)
if(y_input ==0)
	y_speed = lerp(y_speed,0,0.2)
	
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
}

//for randomly generated rooms
else if (obj_game_control.game_state == 2){
	var x_predict = x + x_speed
	var y_predict = y + y_speed
	
	//horizontal
	if (!place_meeting(x_predict,y,obj_collidable)){
		x += x_speed
		if (x_speed > 0) { //right
			if (grid_collide(self,obj_level_generator.grid)){
				x = bbox_right&~(CELL_WIDTH-1)
				x -= bbox_right-x
				x_speed = 0
			}
		}
		else if (x_speed < 0) { //left
			if (grid_collide(self,obj_level_generator.grid)){
				x = bbox_left&~(CELL_WIDTH-1)
				x += CELL_WIDTH+x-bbox_left
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
				y += CELL_HEIGHT+y-bbox_top
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

if(helmet_equipped) instance_create_layer(x,y,"Instances",obj_helmet);
//}