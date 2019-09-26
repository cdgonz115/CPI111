/// @description change position of attack to follow player

/*  too harsh
if(instance_exists(obj_level_generator) && (grid_collide(self,obj_level_generator.grid) || place_meeting(x,y,obj_collidable))){
	instance_destroy()
}
*/
switch(dir){
	case 1: x = target.x +8; y = target.y; break;
	case 2: x = target.x -8; y = target.y; break;
	case 3: x = target.x; y = target.y + 10; break;
	case 4: x = target.x; y = target.y - 15; break;
}