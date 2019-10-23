/// @description click to upgrade hp

if(obj_player.souls > obj_Reaper.upgrade_hp_cost){
	obj_player.souls -= obj_Reaper.upgrade_hp_cost
	obj_player.max_hp += 10
	obj_player.hp = obj_player.max_hp
	for(var i = 0; i < obj_inventory.max_size; i++){
		if(obj_inventory.ItemArray[i] != noone){
			if (obj_inventory.ItemArray[i].object_index == obj_potion1){
				obj_inventory.ItemArray[i].health_restore = 0.2*obj_player.max_hp
			}
		}
	}
	obj_Reaper.upgrade_hp++
	obj_Reaper.upgrade_hp_cost = power(2,obj_Reaper.upgrade_hp) * 50
}
//To be uncommented once a cap has been put to the health cost and the secondary sprite has been added
//if(value>=cap)
//{
//	fully_upgraded=true
//	sprite_index=name_of_sprite
//}