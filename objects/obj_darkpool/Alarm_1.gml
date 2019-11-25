/// @description explodes


if(place_meeting(obj_player.x,obj_player.y,self) && !obj_player.rolling){
	obj_player.hp -= damage
}
instance_destroy()