/// @description Insert description here
// You can write your code in this editor

if(!stopped && !collided) {
	move_towards_point(obj_player.x,obj_player.y,spd)
}
else if (collided && !stopped) {
	stopped = true
	instance_destroy(hitbox)
	alarm[0] = 1
}

