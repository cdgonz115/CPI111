/// @description hits an enemy
if(!hit && !other.dead){
	other.hp -= damage
	damage = 0
	hit = true
	if(other.object_index == obj_slime)
		audio_play_sound(snd_slime_hit,90,0)
	alarm[0] = 5
}