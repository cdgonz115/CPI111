/// @description Insert description here
// You can write your code in this editor

var dir = point_direction(x,y,other.x,other.y)
var xforce = lengthdir_x(knockback_dist,dir-180)
var yforce = lengthdir_y(knockback_dist,dir-180)
if(!grid_collide(self,obj_level_generator.grid)){
	other.x -= xforce
	other.y -= yforce
}