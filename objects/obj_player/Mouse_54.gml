/// @description Do a barrel roll!

if(!roll_cd && !talking && !dead){
	sprite_index = spr_player_roll2
	acceleration = acceleration*rollspeed
	roll_cd = true
	rolling = true
	alarm[9] = 0.3*room_speed //time in roll state
}