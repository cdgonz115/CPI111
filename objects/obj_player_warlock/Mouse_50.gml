/// @description attack 1 - soul siphon


if(!siphoning && !recently_created && line_of_sight(x,y,mouse_x,mouse_y)) {
	ss_tar = instance_place(mouse_x,mouse_y,obj_enemy)
	if(ss_tar != noone){
		instance_create_layer(ss_tar.x,ss_tar.y,"Instances",obj_soul_siphon)
		siphoning = true
	}
}