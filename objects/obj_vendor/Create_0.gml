/// @description Insert description here
// You can write your code in this editor
image_index = 0
image_speed = 0

max_size = 3
curr_size = 3

image_xscale=0.5
image_yscale=0.5

var hp = instance_create_layer(x-sprite_get_width(spr_vendor_hp)/2-1,y+1,"Instances",obj_vendor_hp)
hp.image_xscale = 0.5
hp.image_yscale = 0.5
var mp = instance_create_layer(x,y+1,"Instances",obj_vendor_mana)
mp.image_xscale = 0.5
mp.image_yscale = 0.5
var inv = instance_create_layer(x+sprite_get_width(spr_vendor_inv)/2+1,y+1,"Instances",obj_vendor_inv)
inv.image_xscale = 0.5
inv.image_yscale = 0.5