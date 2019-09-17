/// @description Insert description here
// You can write your code in this editor
depth = -100
for(var i=0; i<3;i++){
	//ItemArray[i] = noone
	ItemArray[i] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
}
//ItemArray[0] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
ItemArray[2] = noone
size = array_length_1d(ItemArray)
show_debug_message("size is " +string(size))