/// @description Insert description here
// You can write your code in this editor
depth = -100
max_size = 3
for(var i=0; i<max_size;i++){
	//ItemArray[i] = noone
	ItemArray[i] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
}
//ItemArray[0] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
ItemArray[2] = noone
size = array_length_1d(ItemArray)