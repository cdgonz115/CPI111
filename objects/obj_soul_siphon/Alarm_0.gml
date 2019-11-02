/// @description do the succ

if(target != noone){
	target.hp -= obj_player_warlock.attack1_dmg
	with(obj_player_warlock){
		hp += 0.1 * attack1_dmg
	}
	alarm[0] = obj_player_warlock.attack1_spd
}
else {
	
}