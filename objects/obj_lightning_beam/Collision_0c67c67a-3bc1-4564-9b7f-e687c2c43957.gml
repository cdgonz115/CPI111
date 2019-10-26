/// @description Insert description here
// You can write your code in this editor
if(other != obj_player && !other.dead){
	if(!other.hit_by_beam){
		other.hp -= damage
		other.hit_by_beam = true
		other.alarm[8] = obj_player.attack5_spd
		//hit_sounds(other)
	}
	
	//knockback op
	//knockback(obj_player,other)
}