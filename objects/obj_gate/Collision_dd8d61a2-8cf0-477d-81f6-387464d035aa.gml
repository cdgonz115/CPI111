/// @description ENTER THE DUNGEON
obj_Reaper.visible = false
obj_Reaper.x = -100
obj_Reaper.y = -100
obj_game_control.game_state = 2
obj_game_control.floor_ = 1
part_particles_clear(obj_rain_control.rain_system)
audio_stop_sound(rain_03)

room_goto(target_room)
