/// @description Insert description here
// You can write your code in this editor
damage = 0
projectile_spd = 1 //pixels per frame
collided = false
owner = noone;
knockback_dist = 5

//go towards player's last position when enemy attacked
move_towards_point(obj_player.x,obj_player.y,projectile_spd)
image_angle = direction

//audio_play_sound(fireball,90,0)