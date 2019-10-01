/// @description Open/close inventory window
//if(!talking){
inventory.image_index = inventory.max_size - 3
var is_visible = object_get_visible(obj_inventory)
object_set_visible(obj_inventory,!is_visible)
//}