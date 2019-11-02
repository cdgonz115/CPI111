/// @description 

//movement
var nearest_ = instance_nearest(x,y,obj_enemy)
if(nearest_ != noone){
	var dist_ = point_distance(x,y,nearest_.x,nearest_.y)
	if (dist_ <= imp_aggro) {
		x_speed += sign(nearest_.x - x) * spd
		y_speed += sign(nearest_.y - y) * spd
	}
	else {
		x_speed = 0
		y_speed = 0
	}
}
else {
	x_speed = 0
	y_speed = 0
}
if(obj_game_control.game_state == 2)
	enemy_collision(self)