/// @description teleport

if(obj_game_control.game_state == 2){
	var can_tele = false
	if(obj_level_generator.grid[# mouse_x/CELL_WIDTH, mouse_y/CELL_HEIGHT] != VOID)
		can_tele = true
	if(mana >= tele_cost && !tele_cd && can_tele){
		mana -= tele_cost
		instance_create_layer(x,y,"Instances",obj_teleport)
		tele_cd = true
		alarm[8] = tele_cd_time
	}
}