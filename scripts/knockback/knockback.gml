/// @arg origin     //object that knockback is originating from
/// @arg other
var self_ = argument0;
var oth_ = argument1;

if(!obj_player.rolling){
	if(oth_.object_index == obj_player_wizard)
		audio_play_sound(foxhit2,15,0)
	else if(oth_.object_index == obj_player)
		audio_play_sound(bunnyhit,15,0)
	var dir = point_direction(self_.x,self_.y,oth_.x,oth_.y)
	var xforce = lengthdir_x(self_.knockback_dist,dir-180)
	var yforce = lengthdir_y(self_.knockback_dist,dir-180)
	with(oth_){
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
		/*
		if(x_input ==0)
			x_speed = lerp(x_speed,0,0.2)
		if(y_input ==0)
			y_speed = lerp(y_speed,0,0.2)
			*/
		knocked_back = true
		alarm[11] = knock_time //time knocked back
	}
}