/// @description click to upgrade hp

if(obj_player.souls >= obj_Reaper.upgrade_hp_cost && !obj_Reaper.hp_fully_upgraded){
	obj_player.souls -= obj_Reaper.upgrade_hp_cost
	obj_player.max_hp += obj_Reaper.upgrade_hp_amount
	obj_player.hp = obj_player.max_hp
	//have to update potions since the current potions restore a lower amount, and it's
	//easier to calculate here than every frame on each potion
	for(var i = 0; i < obj_inventory.max_size; i++){
		if(obj_inventory.ItemArray[i] != noone){
			if (obj_inventory.ItemArray[i].object_index == obj_potion1){
				obj_inventory.ItemArray[i].health_restore = 0.2*obj_player.max_hp
			}
		}
	}
	obj_Reaper.upgrade_hp++
	obj_Reaper.upgrade_hp_cost += 5
	
	if(obj_Reaper.upgrade_hp == obj_Reaper.upgrade_max_hp){
		obj_Reaper.hp_fully_upgraded = true
		image_index = 1
	}
}