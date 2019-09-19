/// @description Insert description here
// You can write your code in this editor
var curr_size = array_length_1d(obj_inventory.ItemArray)
var index = curr_size-1
if(can_pickup && curr_size-1 < obj_inventory.max_size){
	for(var i = 0; i < obj_inventory.size; i++){
		if (obj_inventory.ItemArray[i] == noone){
			index = i;
			break;
		}
	}
	//change this line from self to the actual item object
	obj_inventory.ItemArray[index] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
	instance_destroy()
}