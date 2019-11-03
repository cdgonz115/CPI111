// for randomly generated los
///@arg origin_x
///@arg origin_y
///@arg target_x
///@arg target_y

var origin_x = argument0
var origin_y = argument1
var target_x = argument2
var target_y = argument3

var dir_ = point_direction(origin_x,origin_y,target_x,target_y)
var xx = lengthdir_x(point_distance(origin_x,origin_y,target_x,target_y),dir_)
var yy = lengthdir_y(point_distance(origin_x,origin_y,target_x,target_y),dir_)

for(var i = 30; i >= 1; i--){
	origin_x = origin_x + xx/30
	origin_y = origin_y + yy/30
	if(instance_exists(obj_level_generator)){
		if(grid_collide_point(origin_x,origin_y,obj_level_generator.grid))
			return false
	}
}
return true