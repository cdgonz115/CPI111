/// @description Insert description here
// You can write your code in this editor

var gate_ = self
if(floor(image_index) == 9){
	with(obj_player_warlock){
		if(sprite_index == side){
			if(image_xscale == 1) //right
				instance_create_layer(gate_.x+5,gate_.y,"Instances",obj_imp)
			else //left
				instance_create_layer(gate_.x-5,gate_.y,"Instances",obj_imp)
		}
		else if(sprite_index == up){
			instance_create_layer(gate_.x,gate_.y,"Instances",obj_imp)
		}
		else if(sprite_index == down){
			instance_create_layer(gate_.x,gate_.y+5,"Instances",obj_imp)
		}
	}
	obj_imp.depth = depth -1
}