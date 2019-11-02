/// @description Double all damage

depth = obj_player.depth -1
//increase all damage *2
with(obj_player){
	attack1_dmg *= 2
	attack2_dmg *= 2
	attack3_dmg *= 2
	attack4_dmg *= 2
}
alarm[0] = obj_player.attack5_duration