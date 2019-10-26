/// @description Insert description here
// You can write your code in this editor
x = obj_player.x
y = obj_player.y
var mouse_dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
image_angle = mouse_dir
if(charged && !beamed){
	instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_lightning_beam)
	instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_lightning_beam_channel)
	beamed = true
}