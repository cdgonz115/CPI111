if(obj_game_control.lightswitch == false) //if switch not flipped
{
	instance_destroy() //get rid of lighting effects
}
else
{
	surf = surface_create(room_width, room_height); //make surf
	surface_set_target(surf); //target surf
	draw_clear_alpha(c_black, 0); //give surf these things
	surface_reset_target(); //reset target
}

//How big the light source is
global.x_radius = .41; //values are multiples of spr_light_gradient size
global.y_radius = .41;