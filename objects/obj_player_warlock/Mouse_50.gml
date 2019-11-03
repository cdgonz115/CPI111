/// @description attack 1 - soul siphon

ss_tar = instance_place(mouse_x,mouse_y,obj_enemy)
if(ss_tar != noone){
	if(!siphoning && !recently_created && line_of_sight(x,y,ss_tar.x,ss_tar.y)) {
		instance_create_layer(ss_tar.x,ss_tar.y,"Instances",obj_soul_siphon)
		siphoning = true
	}
}