/// @description hit the enemy
if(!other.rolling){
	audio_play_sound(snd_hit10,90,0)
	other.hp -= damage
}