/// @description Whirlwind Attack2

if(!dead && !attack2_cd && (mana >=attack2_cost) && !talking) {
	damage = attack2_dmg
	audio_play_sound(Warrior___AOE,10,0)
	instance_create_layer(x,y-10,"Instances",obj_player_attack_whirlwind)
	attack2_cd = true
	alarm[2] = attack2_spd
	mana -= attack2_cost
}