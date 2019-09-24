/// @description Insert description here
// You can write your code in this editor
game_state = 1
room_goto(rm_main)
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
	x = 512
	y = 384
}
audio_stop_sound(mus_horror_ambient)
//audio_play_sound(mus_InnerCore_Low,100,true)
instance_destroy(obj_game_over)
alarm_triggered = false
obj_GUI.visible = true