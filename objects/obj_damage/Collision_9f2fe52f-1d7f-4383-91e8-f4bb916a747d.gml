/// @description hit the enemy
if(other != obj_player && !other.dead)
{
	other.hp -= damage
	//hit sounds
	if(other.object_index == obj_slime){
		audio_play_sound(snd_slime_hit,50,0)
	}
	else if(other.object_index == obj_skeleton || other.object_index == obj_skeleton_mage){
		//audio_play_sound(snd_skeleton_hit,50,0)	
	}
	//knockback
	var dir = point_direction(obj_player.x,obj_player.y,other.x,other.y)
	var xforce = lengthdir_x(knockback,dir-180)
	var yforce = lengthdir_y(knockback,dir-180)
	with(other){
		var x_predict = x - xforce
		var y_predict = y - yforce
		if (!place_meeting(x_predict,y,obj_collidable)){
			x -= xforce
			if (xforce < 0) { //right
				if (grid_collide(self,obj_level_generator.grid)){
					x = bbox_right&~(CELL_WIDTH-1)
					x -= bbox_right-x
					xforce = 0
				}
			}
			else if (xforce > 0) { //left
				if (grid_collide(self,obj_level_generator.grid)){
					x = bbox_left&~(CELL_WIDTH-1)
					x += CELL_WIDTH+x-bbox_left
					xforce = 0
				}
			}
		}
		if (!place_meeting(x,y_predict,obj_collidable)){
			y -= yforce
			if(yforce < 0){ //down
				if (grid_collide(self,obj_level_generator.grid)){
					y = bbox_bottom&~(CELL_HEIGHT-1)
					y -= bbox_bottom-y + 1
					yforce = 0
				}
			} 
			else if (yforce > 0){ //up
				if (grid_collide(self,obj_level_generator.grid)){
					y = bbox_top&~(CELL_HEIGHT-1)
					y += CELL_HEIGHT+y-bbox_top
					yforce = 0
				}
			}
		}
		knocked_back = true
		alarm[11] = 5 //time knocked back
	}
}