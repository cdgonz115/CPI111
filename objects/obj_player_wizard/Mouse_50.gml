/// @description wand attack

if(!attack1_cd) {
	damage = 1
	instance_create_layer(x,y,"Instances",obj_player_attack_wand)
	attack1_cd = true
	alarm[1] = attack1_spd
}