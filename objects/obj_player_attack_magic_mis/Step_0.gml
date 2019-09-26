/// @description 
//depth = -y
if(instance_exists(obj_level_generator) && grid_collide(self,obj_level_generator.grid) || place_meeting(x,y,obj_collidable))
	instance_destroy()