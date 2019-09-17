/// @description 

draw_set_color(c_white)
draw_text(x-425,y-350,"Level: " + string(obj_player.level_))
draw_text(x-425,y-350+30,"EXP: " + string(obj_player.exp_))
draw_text(x-425,y-350+60,"   x " + string(obj_player.souls))
draw_sprite_ext(spr_soul,0,x-415,y-350+70,2,2,0,c_white,1)


//draw_sprite_ext(spr_gui_hp,0,x+123+(192/3)*2.2,y+273,2.2,2.1*(obj_player.mana/obj_player.max_mana),0,c_white,1)
//the main GUI
//don't pay attention to the math, it was lots of trial and error for the pixels lol
draw_sprite_ext(spr_gui_hp,0,x+123+(192/3)*2.2,y+273+59,2.2,(2.2*2.1)*(obj_player.mana/obj_player.max_mana),0,c_white,1)
draw_sprite_ext(spr_gui,2,x+125,y+273,2.2,2.1,0,c_white,1) //change subimage later depending on unlocked abilities