/// @description hits player deals damage fizzles

if(!obj_player.rolling){
	obj_player.hp -= damage
	//knockback(         knockback stuff for mage projectile
	instance_destroy()
}