/// @description Insert description here
// You can write your code in this editor
target = obj_player
camera_set_view_size(view_camera[0],400,200)

width = camera_get_view_width(view_camera[0])
height = camera_get_view_height(view_camera[0])


/*
width = 1920/6
height = 1080/6

window_scale = 3
window_set_size(width*window_scale,height*window_scale)
alarm[0] = 1
surface_resize(application_surface,width*window_scale,height*window_scale)