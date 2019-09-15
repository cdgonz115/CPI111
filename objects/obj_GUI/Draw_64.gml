/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_text(x,y,"Level: " + string(obj_player.level_))
draw_text(x,y+30,"EXP: " + string(obj_player.exp_))
draw_text(x,y+60,"Souls: " + string(obj_player.souls))