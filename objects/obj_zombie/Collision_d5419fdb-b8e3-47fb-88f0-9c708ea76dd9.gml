/// @description 
if(!attack_cd && hp >0){
	instance_create_layer(x,y,"Instances",obj_enemy_damage)
	obj_enemy_damage.image_xscale = 2
	obj_enemy_damage.image_yscale = 2
	if(charging)
		obj_enemy_damage.damage = charge_dmg
	else
		obj_enemy_damage.damage = damage
	obj_enemy_damage.knockback = knockback
	hit_cd = true
	alarm[0] = hit_spd * room_speed
	x_speed = 0
	y_speed = 0
	
}