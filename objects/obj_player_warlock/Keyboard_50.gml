/// @description attack 3- blast nova

if(!attack3_cd && (mana >=attack3_cost)) {
	//damage = attack3_dmg
	//audio play blast nova sound
	instance_create_layer(x,y,"Instances",obj_player_attack_blast_nova)
	attack3_cd = true
	alarm[3] = attack3_spd
	mana -= attack3_cost
}