/// @description Insert description here
// You can write your code in this editor
//if(can_get && obj_player.hp < obj_player.max_hp){
var curr_size = array_length_1d(obj_inventory.ItemArray)
show_debug_message(string(curr_size))
if(can_get && curr_size-1 < obj_inventory.size){
	//obj_player.hp += 10
	obj_inventory.ItemArray[curr_size-1] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
	instance_destroy()
}