/// @description prevent crash by waiting for player's inventory to get created
if(object_exists(obj_player)){
	upgrade_inv = obj_player.inventory.max_size
	upgrade_inv_cost = upgrade_inv * 50 //50 for first upgrade, increases by 50 each time
}