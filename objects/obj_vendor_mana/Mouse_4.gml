/// @description click to upgrade hp

if(obj_player.souls >= obj_Reaper.upgrade_mana_cost){
	obj_player.souls -= obj_Reaper.upgrade_mana_cost
	obj_player.max_mana += 5
	obj_player.mana = obj_player.max_mana
	obj_Reaper.upgrade_mana++
	obj_Reaper.upgrade_mana_cost = power(2,obj_Reaper.upgrade_mana) * 50
}
//To be uncommented once a cap has been put to the mana cost and the secondary sprite has been added
//if(value>=cap)
//{
//	fully_upgraded=true
//	sprite_index=name_of_sprite
//}