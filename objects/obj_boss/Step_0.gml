/// @description 

//move_towards_point(obj_player.x,obj_player.y,spd)

//do attack then decide next attack
//the attacks themselves will help boss get back into not attacking state
if(attacking){
	attacking = false
	switch(which_attack){
		case 0:
			//not activtely attacking
			//maybe move towards player
			break;
		case 1:
			//do scythe swipe
			sprite_index = swiping
			break;
		case 2:
			//do dark wave
			sprite_index = flapping
			instance_create_layer(x,y,layer,obj_darkwave)
			break;
			/*
		case 3:
			//do spawn minion
			sprite_index = tapping
			instance_create_layer(obj_player.x,obj_player.y,layer,obj_spawner)
			break;
			*/
		case 3:
			//do dark pool
			sprite_index = withdrawing
			instance_create_layer(x,y,layer,obj_darkpool)
			break;
	}
	alarm[1] = 10 * room_speed
}

if(which_attack == 1 && sprite_index == swiping){
	if(floor(image_index) = 3)
		instance_create_layer(x,y,layer,obj_swipe)
}
else if(which_attack == 3 && sprite_index == withdrawing){
	if(floor(image_index) == 4 && !withdrawn){
		withdrawn = true
		image_speed = 0 //stays in protective sprite state until attack is over, 
						//attack obj will reset image_speed on end of attack/destroy
	}
}