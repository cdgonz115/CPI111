/// @description draw wall shadows

if not surface_exists(shadow_surface) {
	shadow_surface = surface_create(room_width,room_height)
	surface_set_target(shadow_surface)
	draw_clear_alpha(c_black,0)
	
	for(var col=0; col<height-1; col++) {
		for(var row=0; row<width-1; row++) {
			if ((grid[# row, col] == FLOOR) && (grid[# row,col-1] == VOID)) {
				draw_sprite_ext(spr_wall_shadow,0,row*CELL_WIDTH,col*CELL_HEIGHT,1,1,0,c_white,0.5)
			}
		}
	}
	surface_reset_target()
}
draw_surface(shadow_surface,0,0)