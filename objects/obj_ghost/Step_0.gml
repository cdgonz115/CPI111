/// @description 

depth = -y
if(!dead && obj_game_control.game_state != -1){
	if (hp <= 0)
	{
		//sprite_index = spr_slime_death
		damage = 0
		dead = true
		hspeed = 0
		vspeed = 0
		alarm[10] = 1
		//go to animation end
	}
	if(!knocked_back && !dead && !mind_controlled){
		var dist_ = point_distance(x,y,obj_player.x,obj_player.y) //distance between enemy and player to aggro

		if (dist_ <= obj_player.aggro_rad + 50)
		{ 
			move_towards_point(obj_player.x,obj_player.y,spd)
		}
		else{ //idle
			hspeed = 0
			vspeed = 0
		}
	}
}