/// @description Interact with object
interact_dist = 10
var chesto = instance_nearest(x,y,obj_chest)
if(instance_exists(chesto)){
	if(chesto.opened == false && distance_to_object(chesto)<interact_dist){
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
var npc = instance_nearest(x,y,obj_NPC)
if(instance_exists(npc)){
	if(npc.object_index == obj_Reaper){
		if(instance_exists(obj_vendor)){
			//object_set_visible(obj_Reaper.vendor,false)
			instance_destroy(obj_vendor)
			talking = false
		}
		else if(distance_to_object(npc) <10){
			with(npc){
				//first press creates the text box
				if(!instance_exists(obj_dialogue)){
					dialogue = instance_create_layer(x+xoffset,y+yoffset, "Instances", obj_dialogue)
					dialogue.text = text
					obj_player.talking = true
				}
				//next press progresses the dialogue
				else {
					dialogue.text_page++
					dialogue.text_count = 0
					//close dialogue and open vendor menu
					if(dialogue.text_page > array_length_1d(dialogue.text)-1){
						//obj_player.is_talking = false
						instance_destroy(dialogue)
						//object_set_visible(obj_Reaper.vendor,true)
						instance_create_layer(obj_player.x+135,obj_player.y-63,"Instances",obj_vendor)
					}
				}
			}
		}
	}
}