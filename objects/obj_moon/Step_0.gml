/// @description paralax the moon

depth = layer_get_depth("Floor") + 1 //behind floor layer

//y -= distance_to_object(obj_player)/2
y = clamp(y,576,736)