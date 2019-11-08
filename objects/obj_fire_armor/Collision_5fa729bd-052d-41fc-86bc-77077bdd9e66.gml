/// @description enemies take half damage from their own attacks

if(instance_exists(other.owner)){
	other.owner.hp -= damage
	obj_player.hp -= other.damage
	instance_destroy(other)
}