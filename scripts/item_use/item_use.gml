///@arg item
///@arg inventory_index
var item = argument0
var index = argument1
if(obj_inventory.ItemArray[index] != noone){
	if(item.object_index == obj_potion1 && obj_player.hp < obj_player.max_hp){
		obj_player.hp += 10
		obj_inventory.ItemArray[index] = noone
	}
}