/// @description Insert description here
// You can write your code in this editor
var is_visible = object_get_visible(obj_inventory)
show_debug_message(string(is_visible))
object_set_visible(obj_inventory,!is_visible)