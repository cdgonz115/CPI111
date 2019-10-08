/// @description do charge attack

//charge in direction of player (goes through player)
//move_towards_point(obj_player.x,obj_player.y,spd)
x_speed = sign(obj_player.x - x) * spd
y_speed = sign(obj_player.y - y) * spd