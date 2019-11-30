/// @description Collision

depth = -y
if(!dead){
	if (hp <= 0)
	{
		audio_play_sound(skeletonDeath,60,0)
		sprite_index = spr_skeleton_mage_death
		damage = 0
		dead = true
		alarm[10] = 1 //die time
	}
	else if(!knocked_back && !mind_controlled){
		var dist_ = point_distance(x,y,obj_player.x,obj_player.y) //distance between enemy and player to aggro
		if(line_of_sight(x,y,obj_player.x,obj_player.y) && dist_ <= obj_player.aggro_rad+50)
			aggrod = true
		else if (dist_ > obj_player.aggro_rad){
			aggrod = false
			x_speed = 0
			y_speed = 0
		}
		if (aggrod && !attacking) //aggros at higher range
		{ 
			if(dist_ <= CELL_WIDTH*2) //stops 2 cells away
			{
				x_speed = 0
				y_speed = 0
				//attacking = true
				if(!ranged_attack_cd){
					audio_play_sound(enemyfire,60,0)
					attack = instance_create_layer(x,y,"Instances",obj_skele_mage_attack)
					attack.damage = ranged_attack_dmg
					attack.owner = self
					ranged_attack_cd = true
					alarm[1] = ranged_attack_spd
				}
			}
			else //change the movement towards the player
			{
				x_speed += sign(obj_player.x - x) * spd
				y_speed += sign(obj_player.y - y) * spd
			}
		}
		

		//collision with map
		enemy_collision(self)
	}
}