/// @description time to die

obj_player.exp_ += exp_
level_up(obj_player)
instance_create_layer(x,y,"Instances",obj_soul)
instance_destroy()