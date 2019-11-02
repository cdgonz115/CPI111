/// @description attack 1 - magic missiles

if(!attack1_cd && !talking && !recently_created) {
	damage = attack1_dmg
	attack = instance_create_layer(x,y,"Instances",obj_player_attack_magic_mis)
	if(casted1){
		attack.image_yscale = -1
		casted1 = false
	}
	else if(!casted1) {
		attack.image_yscale = 1
		casted1 = true
	}
	attack1_cd = true
	alarm[1] = attack1_spd
	//mana -= attack1_cost
}