/// @description manual loop

//audio_stop_sound(rain_03)
audio_play_sound(rain_03,100,0)
alarm[0] = (audio_sound_length(rain_03) - 1) * room_speed