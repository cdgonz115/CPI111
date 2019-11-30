/// @description do charge attack

//charge in direction of player (goes through player)
//if(line_of_sight(x,y,obj_player.x,obj_player.y))
	move_towards_point(obj_player.x,obj_player.y,spd)
//x_speed += sign(obj_player.x - x) * spd
//y_speed += sign(obj_player.y - y) * spd