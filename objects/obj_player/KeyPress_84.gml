/// @description Interact with object

var chesto = instance_nearest(x,y,obj_chest)
if(instance_exists(chesto)){
	if(chesto.opened == false && distance_to_object(chesto)<5){
		//"collision" with chest
		//right
		if (place_meeting(x+10,y,obj_chest))
			instance_create_layer(x-sprite_width/2,y,"Instances",obj_potion1)
		//left
		else if (place_meeting(x-10,y,obj_chest))
			instance_create_layer(x+sprite_width/2,y,"Instances",obj_potion1)
		//down
		else if(place_meeting(x,y+10,obj_chest))
			instance_create_layer(x,y-sprite_height/2,"Instances",obj_potion1)
		//up
		else if(place_meeting(x,y-10,obj_chest))
			instance_create_layer(x,y+sprite_height/2,"Instances",obj_potion1)
		//pop out a potion probly don't need this line but oh well
		if(instance_exists(obj_potion1))
			obj_potion1.depth = chesto.depth-1
		
		chesto.image_speed = .7
		chesto.opened = true
	}
}