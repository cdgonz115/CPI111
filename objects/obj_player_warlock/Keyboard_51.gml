/// @description Insert description here
// You can write your code in this editor

if(!dead && !attack4_cd && (mana >=attack4_cost) && !talking) {
	mana -= attack4_cost
	attack4_cd = true
	
	var shield = instance_create_layer(x,y,"Instances",obj_bubble_shield)
	alarm[4] = attack4_spd
}