/// @description attack 3- summon exploding imp

if(!attack3_cd && (mana >=attack3_cost)) {
	if(sprite_index == side){
		if(image_xscale == 1) //right
			instance_create_layer(x+20,y,"Instances",obj_imp_gate)
		else //left
			instance_create_layer(x-20,y,"Instances",obj_imp_gate)
	}
	else if(sprite_index == up){
		instance_create_layer(x,y-20,"Instances",obj_imp_gate)
	}
	else if(sprite_index == down){
		instance_create_layer(x,y+20,"Instances",obj_imp_gate)
	}
	attack3_cd = true
	alarm[3] = attack3_spd
	mana -= attack3_cost
}