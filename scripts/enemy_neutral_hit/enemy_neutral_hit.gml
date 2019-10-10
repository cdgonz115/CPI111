///@arg enemy
var enemy = argument0
with(enemy){
	if(!hit_cd && hp >0){
		obj_player.hp -= damage
		//obj_enemy_damage.knockback = knockback
		hit_cd = true
		alarm[0] = hit_spd * room_speed
	}
}