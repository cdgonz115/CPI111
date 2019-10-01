/// @description click to upgrade hp

if(obj_player.souls > obj_Reaper.upgrade_mana_cost){
	obj_player.souls -= obj_Reaper.upgrade_mana_cost
	obj_player.max_mana += 5
	obj_player.mana = obj_player.max_mana
	obj_Reaper.upgrade_mana++
	obj_Reaper.upgrade_mana_cost = power(2,obj_Reaper.upgrade_mana) * 50
}