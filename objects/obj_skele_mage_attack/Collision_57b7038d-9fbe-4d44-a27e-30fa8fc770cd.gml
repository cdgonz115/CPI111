/// @description hits player deals damage fizzles

if(!obj_player.rolling){
	obj_player.hp -= damage
	if(object_exists(owner))
		knockback(owner,other)
	instance_destroy()
}