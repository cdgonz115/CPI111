/// @description Insert description here
// You can write your code in this editor
if(sprite_index == spr_slime_death){
	obj_player.exp_ += exp_ 
	instance_create_layer(x,y,"Instances",obj_soul)
	instance_destroy()
}