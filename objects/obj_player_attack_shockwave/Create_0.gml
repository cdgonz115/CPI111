/// @description set knockback and dmg
knockback = 10
damage = 1
if(instance_exists(obj_level_generator)){
	if(!(grid_collide(self,obj_level_generator.grid) || place_meeting(x,y,obj_collidable))){
		var mouse_dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
		instance_create_layer(x,y,"Instances",obj_damage)
		if(instance_exists(obj_damage)){	
			with(obj_damage){
				//image_xscale = 1.2
				//image_yscale = .5
				image_angle = mouse_dir
				damage = obj_player_attack_shockwave.damage
				knockback = obj_player_attack_shockwave.knockback
				//owner = obj_player
			}
		}
	}
}