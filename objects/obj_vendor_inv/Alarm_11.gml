/// @description turn inventory back on after upgrade
//need this block of code in alarm or it'll crash
obj_player.inventory.image_index = obj_player.inventory.max_size - 3
object_set_visible(obj_inventory,true)
