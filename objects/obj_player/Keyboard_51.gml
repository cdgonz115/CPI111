/// @description Shield block Attack4
if(!dead && !attack4_cd && (mana >=attack4_cost) && !talking && !map_active) {
	mana -= attack4_cost
	attack4_cd = true
	
	var block = instance_create_layer(x,y,"Instances",obj_shield_block)
	alarm[4] = attack4_spd
}