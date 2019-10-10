/// @description check game state

if((game_state == -1) && (!alarm_triggered)) { //you died, go back to main floor
	instance_destroy(obj_enemy)
	instance_destroy(obj_enemy_damage)
	instance_destroy(obj_skele_mage_attack)
	alarm[0] = room_speed*3
	alarm_triggered = true
	instance_create_layer(room_width/2,room_height/2,"Instances",obj_game_over)
	obj_GUI.visible = false
	camera_set_view_pos(view_camera[0],x+50,y)
}