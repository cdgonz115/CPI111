/// @description Collision and stuff
if(!dead){
	depth = -y
	if (hp <= 0)
	{
		//sprite_index = spr_skeleton_death
		damage = 0
		dead = true
		alarm[10] = 1*room_speed //die time
	}
	
	//if(!knocked_back){ //he's immune to knockback
		var dist_ = point_distance(x,y,obj_player.x,obj_player.y) //distance between enemy and player to aggro
		//within aggro radius
		if (dist_ <= obj_player.aggro_rad-50)
		{ 
			if(!charge_cd){
				//play aggro animation
				instance_create_layer(x,y,"Instances",obj_zombie_aggro)
				//set timer to do a charge attack
				alarm[1] = 2*room_speed
				charging = true
				charge_cd = true
			}
		}
		
		

		//collision with map
		enemy_collision(self)
	//}
}