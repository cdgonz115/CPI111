/// @description Interact with object
interact_dist = 12
var chesto = instance_nearest(x,y,obj_chest)
if(instance_exists(obj_level_generator))
	var grid_ = obj_level_generator.grid
if(instance_exists(chesto)){
	if(!chesto.opened && distance_to_object(chesto)<interact_dist){
		//"collision" with chest
		//right
		if (place_meeting(x+interact_dist,y,obj_chest)){
			instance_create_layer(x-sprite_width,y,"Instances",obj_potion1)
		}
		//left
		else if (place_meeting(x-interact_dist,y,obj_chest)){
			instance_create_layer(x+sprite_width,y,"Instances",obj_potion1)
		}
		//up, down
		else if(place_meeting(x,y+interact_dist,obj_chest)||place_meeting(x,y-interact_dist,obj_chest)){
			if(!grid_collide_point(x-sprite_width*2,y,grid_)) {//no wall on the left
				instance_create_layer(x-interact_dist*2,y,"Instances",obj_potion1)
			}
			else if (!grid_collide_point(x+sprite_width*2,y,grid_)){ //no wall on right
				instance_create_layer(x+interact_dist*2,y,"Instances",obj_potion1)
			}
			else if(!grid_collide_point(x,y+sprite_width*2,grid_)){ //no wall below
				instance_create_layer(x,y+interact_dist*2,"Instances",obj_potion1)
			}
			else{
				instance_create_layer(x,y-interact_dist*2,"Instances",obj_potion1)
			}
			obj_potion1.depth = -obj_potion1.y
		}
		//pop out a potion probly don't need this line but oh well
		if(instance_exists(obj_potion1))
			//obj_potion1.depth = chesto.depth-1
		
		chesto.image_speed = .7
		chesto.opened = true
		audio_play_sound(chestopen,2,0)
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
		else if(distance_to_object(npc) <= interact_dist){
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