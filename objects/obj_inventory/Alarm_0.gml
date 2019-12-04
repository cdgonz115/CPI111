/// @description Insert description here
// You can write your code in this editor
for(var i=0; i<max_size;i++){
	ItemArray[i] = noone
	//ItemArray[i] = instance_create_layer(-10,-10,"Inventory",obj_potion1) //will set to noone after done testing
}
for(var k = 0; k < obj_inventory.max_size; k++){
	if(obj_inventory.ItemArray[k] != noone)
		curr_size++
}
//ItemArray[0] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
//ItemArray[max_size-1] = noone
//size = array_length_1d(ItemArray)