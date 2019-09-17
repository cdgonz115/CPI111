/// @description Insert description here
// You can write your code in this editor
var chesto = instance_nearest(x,y,obj_chest)
if (place_meeting(x+5,y,obj_chest))
	instance_create_layer(x-sprite_width/2,y,"Instances",obj_potion1)
else if (place_meeting(x-5,y,obj_chest))
	instance_create_layer(x+sprite_width/2,y,"Instances",obj_potion1)
else if(place_meeting(x,y+5,obj_chest))
	instance_create_layer(x,y-sprite_height/2,"Instances",obj_potion1)
else if(place_meeting(x,y-5,obj_chest))
	instance_create_layer(x,y+sprite_height/2,"Instances",obj_potion1)
if(instance_exists(obj_potion1))
	obj_potion1.depth = chesto.depth-1