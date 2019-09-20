/// @description Insert description here
// You can write your code in this editor
//if(can_get && obj_player.hp < obj_player.max_hp){
//var curr_size = array_length_1d(obj_inventory.ItemArray)
//var index = obj_inventory.size-1
//check if inventory is full
var index = 0
var curr_size = 0
for(var k = 0; k < obj_inventory.max_size; k++){
	if(obj_inventory.ItemArray[k] != noone)
		curr_size++
}
if(can_pickup && curr_size < obj_inventory.max_size){
	//find first open slot
	for(var i = 0; i < obj_inventory.max_size; i++){
		if (obj_inventory.ItemArray[i] == noone){
			index = i;
			break;
		}
	}
	obj_inventory.ItemArray[index] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
	audio_play_sound(snd_Item_Pickup,50,0)
	instance_destroy()
}