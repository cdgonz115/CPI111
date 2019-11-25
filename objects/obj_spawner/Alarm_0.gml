/// @description spawn a random minion

var minion = irandom_range(1,5)
switch(minion){
	case 1:
		instance_create_layer(x,y,layer,obj_slime)
		break;
	case 2:
		instance_create_layer(x,y,layer,obj_ghost)
		break;
	case 3:
		instance_create_layer(x,y,layer,obj_zombie)
		break;
	case 4:
		instance_create_layer(x,y,layer,obj_skeleton)
		break;
	case 5:
		instance_create_layer(x,y,layer,obj_skeleton_mage)
		break;
}
instance_destroy()