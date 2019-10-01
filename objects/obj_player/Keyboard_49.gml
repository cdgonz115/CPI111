/// @description Whirlwind Attack2

if(!attack2_cd && (mana >=attack2_cost) && !talking) {
	damage = attack2_dmg
	instance_create_layer(x,y,"Instances",obj_player_attack_whirlwind)
	attack2_cd = true
	alarm[2] = attack2_spd
	mana -= attack2_cost
}