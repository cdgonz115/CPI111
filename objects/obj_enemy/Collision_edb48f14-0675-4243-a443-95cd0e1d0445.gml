/// @description Insert description here
// You can write your code in this editor

var dir = point_direction(x,y,other.x,other.y)
var xforce = lengthdir_x(knockback,dir-180)
var yforce = lengthdir_y(knockback,dir-180)
other.x -= xforce
other.y -= yforce
//x_speed -= sign(other.x - x)*5
//y_speed -= sign(other.y - y)*5
/*
if (point_distance(x,y,other.x,other.y) <= CELL_WIDTH)
	{
		x_speed -= sign(other.x - x)*5
		y_speed -= sign(other.y - y)*5
	}