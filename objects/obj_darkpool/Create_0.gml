/// @description Insert description here
// You can write your code in this editor
spd = 2
damage = obj_boss.attack4_dmg
move_towards_point(obj_player.x,obj_player.y,spd)
alarm[0] = 5*room_speed //time it chases player
collided = false
stopped = false
image_speed = 0
image_index = 0
hitbox = instance_create_layer(x,y,layer,obj_darkpool_hitbox)