/// @description 

draw_set_color(c_white)
draw_text(x-425,y-350,"Level: " + string(obj_player.level_))
draw_text(x-425,y-350+30,"EXP: " + string(obj_player.exp_))
draw_text(x-425,y-350+60,"Souls: " + string(obj_player.souls))
//the main GUI
draw_sprite_ext(spr_gui,2,x+125,y+273,2.2,2.1,0,c_white,1) //change subimage later depending on unlocked abilities