/// @description hits player deals damage fizzles

if(!obj_player.rolling){
	obj_player.hp -= damage
	instance_destroy()
}