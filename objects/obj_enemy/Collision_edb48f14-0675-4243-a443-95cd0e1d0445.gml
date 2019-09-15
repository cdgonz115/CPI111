/// @description Insert description here
// You can write your code in this editor

if (point_distance(x,y,other.x,other.y) <= CELL_WIDTH)
	{
		x_speed -= sign(other.x - x)
		y_speed -= sign(other.y - y)
	}