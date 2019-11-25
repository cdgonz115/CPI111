/// @description Insert description here
// You can write your code in this editor

show_debug_message(string(place_meeting(obj_player.x,obj_player.y,self)))
if(!stopped && !collided) {
	move_towards_point(obj_player.x,obj_player.y,spd)
	//if(x == obj_player.x && y == obj_player.y)
		//collided = true
}
else if (collided && !stopped) {
	stopped = true
	alarm[0] = 1
}

