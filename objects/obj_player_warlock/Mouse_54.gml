/// @description teleport to tele rune

if(!roll_cd && instance_exists(obj_tele_rune)){
	roll_cd = true
	x = obj_tele_rune.x
	y = obj_tele_rune.y
	alarm[10] = roll_cd_time
}