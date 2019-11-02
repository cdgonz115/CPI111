/// @description attack 4- fire armor

if(!dead && !attack4_cd && (mana >=attack4_cost) && !talking) {
	mana -= attack4_cost
	attack4_cd = true
	
	var shield = instance_create_layer(x,y,"Instances",obj_fire_armor)
	alarm[4] = attack4_spd
}