/// @description Insert description here
// You can write your code in this editor
game_state = 1
show_debug_message("now we're  here")
room_goto(rm_main)
with(obj_player){
	show_debug_message("really here?")
	max_hp = 100
	max_mana = 100
	hp = max_hp
	mana = max_mana
	exp_ = 0
	level_ = 1
	with(inventory){
		for(var i=0; i<max_size;i++){
			ItemArray[i] = noone
		}
	}
	x = 512
	y = 384
}
audio_stop_sound(mus_horror_ambient)
audio_play_sound(mus_InnerCore_Low,100,true)
instance_destroy(obj_game_over)
alarm_triggered = false
obj_GUI.visible = true