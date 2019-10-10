/// @description Collision
if(!dead){
	if (hp <= 0)
	{
		sprite_index = spr_skeleton_mage_death
		damage = 0
		dead = true
		alarm[10] = 1*room_speed //die time
	}
	else if(!knocked_back){
		var dist_ = point_distance(x,y,obj_player.x,obj_player.y) //distance between enemy and player to aggro

		if ((dist_ <= obj_player.aggro_rad+50) && !attacking) //aggros at higher range
		{ 
			if(dist_ <= CELL_WIDTH*2) //stops 2 cells away
			{
				x_speed = 0
				y_speed = 0
				attacking = true
			}
			else //change the movement towards the player
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
		enemy_collision(self)
	}
}