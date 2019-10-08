/// @description 
if(!attack_cd && !dead){
	//audio_play_sound()
	obj_player.hp -= damage
	attack_cd = true
	alarm[0] = attack_spd * room_speed
}