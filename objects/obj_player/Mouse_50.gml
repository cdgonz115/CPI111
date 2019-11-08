/// @description Attack 1

if(!attack1_cd && !talking && !dead && !recently_created && !map_active) {
	instance_create_layer(x,y,"Instances",obj_player_attack1)
	attack1_cd = true
	alarm[1] = attack1_spd
}
