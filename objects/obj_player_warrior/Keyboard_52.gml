/// @description Enrage attack 5

if(floor(hp) > attack5_cost && !attack5_cd && !talking && !dead){
	hp -= attack5_cost
	attack5_cd = true
	alarm[5] = attack5_spd
	instance_create_layer(x,y,"Instances",obj_enrage)
}