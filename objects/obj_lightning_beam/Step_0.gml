/// @description Insert description here
// You can write your code in this editor
if(obj_player.mana < obj_player.attack5_cost_channel)
	instance_destroy(obj_channel_attack)
x = obj_player.x
y = obj_player.y
var mouse_dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
image_angle = mouse_dir
