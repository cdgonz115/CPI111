/// @description Do a barrel roll!


if(!roll_cd){
	image_index = spr_player_roll2
	acceleration = acceleration*rollspeed
	roll_cd = true
	alarm[11] = 3 //3 frames
}