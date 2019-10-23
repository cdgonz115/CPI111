/// @description wait for player's inventory to get created? or else it crashes
if(object_exists(obj_player)){
	upgrade_inv = obj_player.inventory.max_size
	upgrade_inv_cost = power(2,upgrade_inv) * 50
}