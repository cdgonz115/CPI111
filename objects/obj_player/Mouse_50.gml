/// @description Attack 1

if(!attack1_cd && !talking && !dead && !recently_created) {
	attack1_dmg = 1
	instance_create_layer(x,y,"Instances",obj_player_attack1)
	attack1_cd = true
	alarm[1] = attack1_spd
}
else
	recently_created = false //so that when choosing the class, doesn't throw out a random attack