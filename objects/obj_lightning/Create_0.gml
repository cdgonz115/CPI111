/// @description Insert description here
// You can write your code in this editor
randomize()
depth = layer_get_depth("Weather")
x = room_width/2
y = room_height/2
image_xscale = room_width/sprite_width
image_yscale = room_height/sprite_height
alarm[0] = random_range(1,10) * room_speed