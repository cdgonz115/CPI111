/// @description create tele rune

if(!tele_cd){
	tele_cd = true
	if(instance_exists(obj_tele_rune)){
		instance_destroy(obj_tele_rune)
	}
	instance_create_layer(x,y,"Instances",obj_tele_rune)
	alarm[9] = tele_cd_time
}