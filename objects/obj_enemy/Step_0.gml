/// @description Collision

if (hp <= 0)
{
	sprite_index = spr_slime1
	//instance_destroy()
}

//distance between enemy and player to aggro
var dist_ = point_distance(x,y,obj_player.x,obj_player.y) //distance between enemy and player to aggro

if (dist_ <= obj_player.aggro_rad)
{ 
	if(dist_ <= CELL_WIDTH/2)
	{
		//x_speed -= sign(obj_player.x - x)
		x_speed = 0
		y_speed = 0
		//y_speed -= sign(obj_player.y - y)
	}
	else //change the movement towards the player while respecting map hitbox
	{
		x_speed += sign(obj_player.x - x) * spd
		y_speed += sign(obj_player.y - y) * spd
	}
}
else{
	x_speed = 0
	y_speed = 0
}

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