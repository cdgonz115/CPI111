/// @description 

//choice of class
choice = ""
chosen = false
//change to false during real game
//chosen = false

floor_ = 0
//difficulty = 1
//keep gamestate starting at 1 for testing
game_state = 1 // 0 = title screen, 1 = main floor && boss, 2 = dungeon floor, -1 = you died, 3 = game over
audio_play_sound(Dark_Souls___Gwyn__Lord_of_Cinder___Ru_s_Piano_Cover,100,0)
alarm[11] = (156) *room_speed
alarm_triggered = false
boss_floor = false

//lighting effects
lightswitch = true;   //true = on, false = off

