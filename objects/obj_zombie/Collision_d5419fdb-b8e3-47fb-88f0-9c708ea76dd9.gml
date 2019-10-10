/// @description 
if(!obj_player.rolling && hp >0){
	if(charging){
		obj_player.hp -= charge_dmg
		charging = false
		charge_cd = true
		hit_cd = true
		alarm[2] = 3*room_speed
	}
	else if (!hit_cd){
		obj_player.hp -= damage
		hit_cd = true
		alarm[0] = 3
	}
	
}