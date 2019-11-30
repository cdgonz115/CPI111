/// @description Collision and stuff

depth = -y
if(!dead){
	
	if (hp <= 0)
	{
		//sprite_index = spr_skeleton_death
		damage = 0
		dead = true
		alarm[10] = 1 //die time
	}
	
	//if(!knocked_back){ //he's immune to knockback
		var dist_ = point_distance(x,y,obj_player.x,obj_player.y) //distance between enemy and player to aggro
		//within aggro radius
		if(line_of_sight(x,y,obj_player.x,obj_player.y) && dist_ <= obj_player.aggro_rad)
			aggrod = true
		else {// if (line_of_sight(x,y,obj_player.x,obj_player.y) && dist_ > obj_player.aggro_rad){
			aggrod = false
			hspeed = 0
			vspeed = 0
		}
		if (aggrod)
		{ 
			if(!charge_cd){
				//play aggro animation
				instance_create_layer(x,y,"Instances",obj_zombie_aggro)
				audio_play_sound(zombiegrunt,60,0)
				//set timer to do a charge attack
				charging = true
				charge_cd = true
				alarm[1] = 1*room_speed
			}
		}
		
		//collision with map different for zombie
		var speed_ = point_distance(0,0,hspeed,vspeed)
		var direction_ = point_direction(0,0,hspeed,vspeed)
		if (speed_ > max_speed) {
			hspeed = lengthdir_x(max_speed, direction_)
			vspeed = lengthdir_y(max_speed, direction_)
		}

		var x_predict = x + hspeed
		var y_predict = y + vspeed
	
		//horizontal
		if (!place_meeting(x_predict,y,obj_collidable)){
			x += hspeed
			if (hspeed > 0) { //right
				if (grid_collide(self,obj_level_generator.grid)){
					x = bbox_right&~(CELL_WIDTH-1)
					x -= bbox_right-x
					hspeed = 0
					vspeed = 0
					charging = false
					audio_play_sound(zombiebump,60,0)
					alarm[2] = charge_time
				}
			}
			else if (hspeed < 0) { //left
				if (grid_collide(self,obj_level_generator.grid)){
					x = bbox_left&~(CELL_WIDTH-1)
					x += CELL_WIDTH+x-bbox_left
					hspeed = 0
					vspeed = 0
					charging = false
					audio_play_sound(zombiebump,60,0)
					alarm[2] = charge_time
				}
			}
		}
		else {
			x_predict = x
			while (!place_meeting(x_predict,y,obj_collidable)){
				x_predict += sign(hspeed)
			}
			x = x_predict - sign(hspeed)
		}
	
		//vertical
		if (!place_meeting(x,y_predict,obj_collidable)){
			y += vspeed	
			if(vspeed > 0){ //down
				if (grid_collide(self,obj_level_generator.grid)){
					y = bbox_bottom&~(CELL_HEIGHT-1)
					y -= bbox_bottom-y + 1
					vspeed = 0
					hspeed = 0
					charging = false
					audio_play_sound(zombiebump,60,0)
					alarm[2] = charge_time
				}
			} 
			else if (vspeed < 0){ //up
				if (grid_collide(self,obj_level_generator.grid)){
					y = bbox_top&~(CELL_HEIGHT-1)
					y += CELL_HEIGHT+y-bbox_top
					vspeed = 0
					hspeed = 0
					charging = false
					audio_play_sound(zombiebump,60,0)
					alarm[2] = charge_time
				}
			}
		}
		else {
			y_predict = y
			while (!place_meeting(x,y_predict,obj_collidable) ){
				y_predict += sign(vspeed)
			}
			y = y_predict - sign(vspeed)
		}
	//}
}