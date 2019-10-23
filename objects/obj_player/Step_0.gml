/// @description Movement/Collision with walls

if(hp <= 0){
	dead = true
	obj_game_control.game_state = -1
}

//if(obj_game_control.game_state != -1){ //game over
if(!talking){
	//level check
	if(exp_ >= exp_to_level && (exp_ > 0)){
			level_ ++
			exp_ = exp_ % exp_to_level
			exp_to_level = power(2,level_) * 50
			instance_create_layer(x,y-CELL_HEIGHT/2,"Instances",obj_lvl_up)
	}
	//mana regen
	if(mana < max_mana) 
		mana+= mana_regen/room_speed
	//hp regen? probly not cuz hp items like potions

	//movement controls
	if(!knocked_back){
		player_movement(self)
	
		//collision
		//for non-randomly generated rooms
		if(obj_game_control.game_state == 1)
			collision_nonrandom(self)
		//for randomly generated rooms
		else if(obj_game_control.game_state == 2)
			collision_random(self)
	}
	
	if(helmet_equipped) instance_create_layer(x,y,"Instances",obj_helmet);
}