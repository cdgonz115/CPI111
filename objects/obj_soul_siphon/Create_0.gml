/// @description start succin

target = obj_player_warlock.ss_tar
siphon_dist = 120
depth = target.depth -1
var mouse_dir = point_direction(target.x,target.y,obj_player.x,obj_player.y)
image_angle = mouse_dir
var stretch = point_distance(target.x,target.y,obj_player.x,obj_player.y)
image_xscale = stretch / 34
alarm[0] = obj_player_warlock.attack1_spd