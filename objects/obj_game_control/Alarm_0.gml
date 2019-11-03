/// @description reset the game!
game_state = 1
obj_player.dead = false
boss_floor = false
floor_ = 0
room_goto(rm_town)
obj_Reaper.visible = true
with(obj_player){
	hp = max_hp
	mana = max_mana
	level_ = 1
	exp_ = 0
	exp_to_level = power(2,level_) * 50
	
	with(inventory){
		for(var i=0; i<max_size;i++){
			ItemArray[i] = noone
		}
	}
	x = 990
	y = 800
}
audio_stop_sound(mus_horror_ambient)
audio_play_sound(Dark_Souls___Gwyn__Lord_of_Cinder___Ru_s_Piano_Cover,100,true)
instance_destroy(obj_game_over)
alarm_triggered = false
obj_GUI.visible = true