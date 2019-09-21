/// @description Do a barrel roll!

if(!roll_cd){
	sprite_index = spr_player_roll2
	acceleration = acceleration*rollspeed
	roll_cd = true
	rolling = true
	alarm[11] = 15 //time in roll state
}