/// @description click to upgrade hp

if((obj_player.souls > obj_Reaper.upgrade_inv_cost) && (obj_player.inventory.max_size<9)){
	obj_player.souls -= obj_Reaper.upgrade_inv_cost
	obj_player.inventory.max_size++
	obj_player.inventory.ItemArray[obj_player.inventory.max_size-1] = noone
	if(object_get_visible(obj_inventory)){
		object_set_visible(obj_inventory,false)
		//object_set_visible(obj_inventory,true)
		alarm[11] = 6
	}
	obj_Reaper.upgrade_inv++
	obj_Reaper.upgrade_inv_cost = power(2,obj_Reaper.upgrade_inv) * 50
}