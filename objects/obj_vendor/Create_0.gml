/// @description Insert description here
// You can write your code in this editor
image_index = 0
image_speed = 0

max_size = 3
curr_size = 3

image_xscale=.5;
image_yscale=.5


instance_create_layer(obj_vendor.x-32-1,obj_vendor.y+5,"Instances",obj_vendor_hp)
instance_create_layer(obj_vendor.x+1,obj_vendor.y+5,"Instances",obj_vendor_mana)
instance_create_layer(obj_vendor.x +32+1,obj_vendor.y+5,"Instances",obj_vendor_inv)