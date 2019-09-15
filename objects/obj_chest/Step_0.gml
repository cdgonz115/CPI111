/// @description collision
/*
if not (place_meeting(x+CELL_WIDTH/2,y,obj_player) || place_meeting(x-CELL_WIDTH/2,y,obj_player) || place_meeting(x,y+CELL_HEIGHT/2,obj_player) || place_meeting(x,y-CELL_HEIGHT/2,obj_player)){
	show_debug_message("collides")
	with(other){
		x_speed = 0
		y_speed = 0
	}
}
