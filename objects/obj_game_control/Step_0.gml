/// @description check game state

if((game_state == -1) && (!alarm_triggered)) { //you died, go back to main floor
	alarm[0] = room_speed*3
	alarm_triggered = true
	instance_create_layer(room_width/2,room_height/2,"Instances",obj_game_over)
	obj_GUI.visible = false
	camera_set_view_pos(view_camera[0],x+50,y)
}
/*
if(instance_exists(obj_game_over)){
	obj_game_over.image_alpha = game_over_alpha*room_speed
	game_over_alpha += 0.1
}