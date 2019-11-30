/// @description Insert description here
// You can write your code in this editor
//depth = -10000
//x= obj_player.x
//y= obj_player.y
image_xscale = room_width/sprite_width
image_yscale = room_height/sprite_height
//obj_camera.x = room_width/2
//obj_camera.y = room_height/2
//camera_set_view_pos(view_camera[0], room_width/2, room_height/2)
camera_set_view_size(view_camera[0],room_width,room_height)
audio_stop_all()
//audio_play_sound(mus_horror_ambient,1,0)
alarm[0] = 5 * room_speed