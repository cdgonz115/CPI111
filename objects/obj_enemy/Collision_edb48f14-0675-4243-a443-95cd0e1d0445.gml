/// @description Insert description here
// You can write your code in this editor

if (point_distance(x,y,other.x,other.y) <= CELL_WIDTH)
	{
		x_speed -= sign(other.x - x)*5
		y_speed -= sign(other.y - y)*5
	}
	
/*
if(place_meeting(x,y,obj_enemy)) {
	x_speed -= sign(other.x - x) *.2
	y_speed -= sign(other.y - y) *.2
}