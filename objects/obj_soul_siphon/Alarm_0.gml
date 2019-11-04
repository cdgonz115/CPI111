/// @description do the succ

if(target != noone){
	target.hp -= obj_player_warlock.attack1_dmg
	with(obj_player_warlock){
		if(floor(hp) < max_hp)
			hp += 0.1 * attack1_dmg
		if(hp > max_hp)
			hp = max_hp
	}
	alarm[0] = obj_player_warlock.attack1_spd
}
else {
	
}