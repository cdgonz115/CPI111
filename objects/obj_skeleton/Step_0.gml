/// @description Collision
if(!dead && obj_game_control.game_state != -1){
	if (hp <= 0)
	{
		sprite_index = spr_skeleton_death
		damage = 0
		dead = true
		alarm[10] = 1
	}
	if(!knocked_back && !mind_controlled){
		var dist_ = point_distance(x,y,obj_player.x,obj_player.y) //distance between enemy and player to aggro

		if (dist_ <= obj_player.aggro_rad && line_of_sight(x,y,obj_player.x,obj_player.y))
		{ 
			if(dist_ <= CELL_WIDTH/3)
			{
				x_speed = 0
				y_speed = 0
			}
			else //change the movement towards the player
			{
				x_speed += sign(obj_player.x - x) * spd
				y_speed += sign(obj_player.y - y) * spd
			}
		}
		else{ //idle
			x_speed = 0
			y_speed = 0
		}

		//collision with map
		enemy_collision(self)
	}
}