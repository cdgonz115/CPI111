/// @description 
if(!attack_cd && hp >0){
	instance_create_layer(x,y,"Instances",obj_enemy_damage)
	//obj_enemy_damage.image_xscale = 2
	obj_enemy_damage.damage = damage
	obj_enemy_damage.knockback = knockback
	//obj_damage.owner = self
	//obj_damage.damage = damage
	//obj_player.hp -= damage
	attack_cd = true
	alarm[0] = attack_spd * room_speed
}