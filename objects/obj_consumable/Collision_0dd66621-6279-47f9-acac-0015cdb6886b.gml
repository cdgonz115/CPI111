/// @description pickup if colliding with player and have enough room in inventory
//override me and copy this block to the item
var curr_size = array_length_1d(obj_inventory.ItemArray)
var index = curr_size-1
if(can_pickup && curr_size < obj_inventory.max_size){
	for(var i = 0; i < obj_inventory.max_size; i++){
		if (obj_inventory.ItemArray[i] == noone){
			index = i;
			break;
		}
	}
	//change this line from self to the actual item object
	//obj_inventory.ItemArray[index] = instance_create_layer(-10,-10,"Inventory",self)
	instance_destroy()
}