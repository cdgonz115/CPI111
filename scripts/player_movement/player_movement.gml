///@arg player

var player = argument0
with(player){
	key_right = keyboard_check(ord("D"))
	key_left = keyboard_check(ord("A"))
	key_up = keyboard_check(ord("W"))
	key_down = keyboard_check(ord("S"))

	x_input = key_right - key_left
	y_input = key_down - key_up

	var speed_ = point_distance(0,0,x_speed,y_speed)
	var direction_ = point_direction(0,0,x_speed,y_speed)
	if (speed_ > max_speed) {
		x_speed = lengthdir_x(max_speed, direction_)
		y_speed = lengthdir_y(max_speed, direction_)
	}

	x_speed = (x_input) * acceleration
	y_speed = (y_input) * acceleration
	//friction
	if(x_input ==0)
		x_speed = lerp(x_speed,0,0.2)
	if(y_input ==0)
		y_speed = lerp(y_speed,0,0.2)
}