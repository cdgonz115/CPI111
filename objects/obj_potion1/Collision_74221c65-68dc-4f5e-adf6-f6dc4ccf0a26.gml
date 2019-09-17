/// @description Insert description here
// You can write your code in this editor
//if(can_get && obj_player.hp < obj_player.max_hp){
var curr_size = array_length_1d(obj_inventory.ItemArray)
var index = curr_size-1
if(can_get && curr_size-1 < obj_inventory.size){
	for(var i = 0; i < obj_inventory.size; i++){
		if (obj_inventory.ItemArray[i] == noone){
			index = i;
			break;
		}
	}
	obj_inventory.ItemArray[index] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
	instance_destroy()
}