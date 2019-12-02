/// @description Use potion

//find and use first available potion
if(!dead){
	var index = 0
	for(var i = 0; i < obj_inventory.max_size; i++){
		if(obj_inventory.ItemArray[i] != noone){
			if (obj_inventory.ItemArray[i].object_index == obj_potion1){
				index = i;
				
				break;
			}
		}
	}
	item_use(obj_inventory.ItemArray[index],index)
}