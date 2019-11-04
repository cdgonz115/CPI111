/// @description check game state

if(game_state == 1 && !chosen){ //start of game
	chosen = true
	if(choice == "Warrior"){
		instance_create_layer(990,800,"Instances",obj_player)
	}
	else if(choice == "Wizard") {
		instance_create_layer(990,800,"Instances",obj_player_wizard)
	}
	else if(choice == "Warlock") {
		instance_create_layer(990,800,"Instances",obj_player_warlock)
	}
	instance_create_layer(1056,736,"Instances",obj_Reaper)
	instance_create_layer(-10,10,"Instances",obj_GUI)
	alarm[1] = 10
}

if(floor_ == 11 && !boss_floor){
	room_goto(rm_boss)
	//obj_player.tilemap = layer_tilemap_get_id("Collision")
	game_state = 1
	obj_player.x = 988
	obj_player.y = 858
	audio_stop_all()
	audio_play_sound(mus_InnerCore_Low,100,1)
	obj_player.camera.width = camera_get_view_width(view_camera[0])
	obj_player.camera.height = camera_get_view_height(view_camera[0])
	boss_floor = true
}

if((game_state == -1) && (!alarm_triggered)) { //you died, go back to main floor
	instance_destroy(obj_enemy)
	instance_destroy(obj_enemy_damage)
	instance_destroy(obj_skele_mage_attack)
	instance_destroy(obj_randomables) //if you don't, the torches will still show through the floor briefly
	instance_destroy(obj_consumable)
	//game over stuff
	alarm[0] = room_speed*3 
	alarm_triggered = true
	instance_create_layer(room_width/2,room_height/2,"Instances",obj_game_over)
	obj_GUI.visible = false
	camera_set_view_pos(view_camera[0],x+50,y)
}