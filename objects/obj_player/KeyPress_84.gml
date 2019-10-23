/// @description Interact with object
interact_dist = 12
var chesto = instance_nearest(x,y,obj_chest)
if(instance_exists(chesto)){
	if(!chesto.opened && distance_to_object(chesto)<interact_dist){
		//"collision" with chest
		//right
		if (place_meeting(x+interact_dist,y,obj_chest))
			instance_create_layer(x-sprite_width,y,"Instances",obj_potion1)
		//left
		else if (place_meeting(x-interact_dist,y,obj_chest))
			instance_create_layer(x+sprite_width,y,"Instances",obj_potion1)
		//down
		else if(place_meeting(x,y+interact_dist,obj_chest))
			instance_create_layer(x,y-sprite_height,"Instances",obj_potion1)
		//up
		else if(place_meeting(x,y-interact_dist,obj_chest))
			instance_create_layer(x,y+sprite_height,"Instances",obj_potion1)
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
		if(obj_Reaper.vendor.visible){
			//object_set_visible(obj_Reaper.vendor,false)
			obj_Reaper.vendor.visible = false
			instance_destroy(obj_vendor_click)
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
						obj_Reaper.vendor.visible = true
						
						instance_create_layer(obj_player.x+sprite_width*1.5+25,obj_player.y-60,"Instances",obj_vendor_hp)
						instance_create_layer(obj_player.x+sprite_width*1.5+59,obj_player.y-60,"Instances",obj_vendor_mana)
						instance_create_layer(obj_player.x+sprite_width*1.5+93,obj_player.y-60,"Instances",obj_vendor_inv)
					}
				}
			}
		}
	}
}