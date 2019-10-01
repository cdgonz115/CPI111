/// @description wand attack
/*
if(!attack1_cd) {
	damage = 1
	instance_create_layer(x,y,"Instances",obj_player_attack_wand)
	attack1_cd = true
	alarm[1] = attack1_spd
}
*/
if(!attack2_cd && (mana >=attack2_cost)) {
	damage = attack2_dmg
	instance_create_layer(x,y,"Instances",obj_player_attack_magic_mis)
	attack2_cd = true
	alarm[2] = attack2_spd
	mana -= attack2_cost
}