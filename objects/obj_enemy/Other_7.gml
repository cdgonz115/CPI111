/// @description Insert description here
// You can write your code in this editor
if(sprite_index == spr_slime1){
	obj_player.exp_ += exp_ //not sure why I have player leveling in here lol
	if(obj_player.exp_% (power(2,obj_player.level_) * 50) == 0){
		obj_player.level_ ++
		obj_player.exp_ = 0
	}
	instance_create_layer(x,y,"Instances",obj_soul)
	instance_destroy()
}