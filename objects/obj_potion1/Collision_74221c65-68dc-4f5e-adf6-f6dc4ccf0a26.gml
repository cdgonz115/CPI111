/// @description Insert description here
// You can write your code in this editor
//depth = -y
//check if inventory is full
var index = 0
if(can_pickup && obj_inventory.curr_size < obj_player.inventory.max_size){
	//find first open slot
	for(var i = 0; i < obj_player.inventory.max_size; i++){
		if (obj_player.inventory.ItemArray[i] == noone){
			index = i;
			break;
		}
	}
	obj_inventory.ItemArray[index] = instance_create_layer(-10,-10,"Inventory",obj_potion1)
	obj_inventory.curr_size++
	audio_play_sound(snd_Item_Pickup,50,0)
	instance_destroy()
}