/// @description Pickup the item, replace with new object below

//override and copy this code when inherit
var curr_size = array_length_1d(obj_inventory.ItemArray)
var index = curr_size-1
if(can_pickup && curr_size-1 < obj_inventory.size){
	for(var i = 0; i < obj_inventory.size; i++){
		if (obj_inventory.ItemArray[i] == noone){
			index = i;
			break;
		}
	}
	//uncomment this line and change potion1 to the object
	//obj_inventory.ItemArray[index] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
	instance_destroy()
}