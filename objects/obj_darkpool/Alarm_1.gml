/// @description explodes

if(place_meeting(x,y,obj_player) && !obj_player.rolling){
	obj_player.hp -= damage
}
instance_destroy()