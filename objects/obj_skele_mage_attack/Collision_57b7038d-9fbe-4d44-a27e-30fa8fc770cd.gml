/// @description hits player deals damage fizzles

if(!obj_player.rolling){
	obj_player.hp -= damage
	knockback(owner,other)
	instance_destroy()
}