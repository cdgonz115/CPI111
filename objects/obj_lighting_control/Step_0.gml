//Flicker effect
var flicker = random_range(-0.02, 0.02); //random var
//global.x_radius += flicker;
//global.y_radius += flicker;

global.x_radius = clamp(global.x_radius, 0.40, 0.50); // clamp value between these values
global.y_radius = clamp(global.y_radius, 0.40, 0.50);


//Light source creation
/* If a surface exists, draw rectangle on it, then cut out
sprites for light effect. If surface doesn't exist, create the surface */

if (surface_exists(surf))
{
	surface_set_target(surf); //target surf for changes
	draw_set_color(c_black); //set color for rectangle
	draw_set_alpha(0.81); //rectangle transparancy
	draw_rectangle(0,0,room_width, room_height, false); //draw rectangle
	
	gpu_set_blendmode(bm_subtract) //blendmode to subtract
	
	with(obj_player) //on player
	{
		draw_sprite_ext(spr_light_gradient, 0, x, y, global.x_radius+.15, global.y_radius+.15, 0, c_black, 1);
		//gpu_set_blendmode(bm_zero);
		//draw_sprite_ext(spr_light_gradient, 0, x, y, global.x_radius, global.y_radius, 0, c_orange, 0.7);
		// ^^ colored lighting stuff for future
	}
	
	with(obj_torch) //on torch
	{
		draw_sprite_ext(spr_light_gradient, 0, x, y, global.x_radius+flicker, global.y_radius+flicker, 0, c_black, 1);
		//gpu_set_blendmode(bm_zero);
		//draw_sprite_ext(spr_light_gradient, 0, x, y, global.x_radius, global.y_radius, 0, c_orange, 0.7);
		// ^^ colored lighting stuff for future
	}
	gpu_set_blendmode(bm_normal); //set blendmode back to normal
	draw_set_alpha(1); //alpha to normal
	surface_reset_target(); //reset target
	
}
else //if surface doesnt exist
{
	surf = surface_create(room_width, room_height) //make it exist
	surface_set_target(surf)  //target it
	draw_clear_alpha(c_black, 0) //apply these details
	surface_reset_target() //then reset target
}
