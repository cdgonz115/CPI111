/// @description click to upgrade hp

if(obj_player.souls >= obj_Reaper.upgrade_mana_cost && !obj_Reaper.mana_fully_upgraded){
	obj_player.souls -= obj_Reaper.upgrade_mana_cost
	obj_player.max_mana += obj_Reaper.upgrade_mana_amount
	obj_player.mana = obj_player.max_mana
	obj_Reaper.upgrade_mana++
	obj_Reaper.upgrade_mana_cost += 10
	
	if(obj_Reaper.upgrade_mana == obj_Reaper.upgrade_max_mana){
		obj_Reaper.mana_fully_upgraded = true
		image_index = 1
	}
}