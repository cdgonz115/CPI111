/// @description Insert description here
// You can write your code in this editor
if(obj_game_control.game_state == 3){
	var height = view_hport[0]
	var width = view_wport[0]
	draw_self()
	//draw_sprite(obj_player.sprite_index,0,width/2,height/2)
	draw_set_color(c_aqua)
	draw_set_halign(fa_center)
	draw_text_transformed(width/2,height/2-250,"Game Over",7,7,0)
	draw_text_transformed(width/2,height/2-50,"You did it,\nyou're finally free\nfrom the Reaper's grasp!",4,4,0)
}