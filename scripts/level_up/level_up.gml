///@arg player
var player = argument0

with(player){
	if(exp_ >= exp_to_level && (exp_ > 0)){
			level_ ++
			exp_ = exp_ % exp_to_level
			exp_to_level = power(2,level_) * 50
			instance_create_layer(x,y-CELL_HEIGHT/2,"Instances",obj_lvl_up)
	}
}