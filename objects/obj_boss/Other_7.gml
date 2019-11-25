/// @description 

switch(sprite_index){
	case swiping:
		instance_destroy(obj_swipe)
		sprite_index = idle
		break;
	case tapping:
		sprite_index = idle
		break;
	case withdrawing:
		sprite_index = idle
		break;
	case flapping:
		if(flapped > 3) { //duration of wave attack, might need to only flap twice
			sprite_index = idle
			flapped = 0
		}
		else {
			flapped++
		}
		break;
	
}