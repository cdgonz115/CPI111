/// @description hit the enemy
if(other != obj_player)
{
	other.hp -= damage
	//knockback
	//not working
	var dir = point_direction(obj_player.x,obj_player.y,other.x,other.y)
	var xforce = lengthdir_x(knockback,dir-180)
	var yforce = lengthdir_y(knockback,dir-180)
	other.x -= xforce
	other.y -= yforce
}