/// @description 

draw_set_color(c_white)
draw_text(x-425,y-350,"Level: " + string(obj_player.level_))
draw_text(x-425,y-350+30,"EXP: " + string(obj_player.exp_))
draw_text(x-425,y-350+60,"   x " + string(obj_player.souls))
draw_sprite_ext(spr_soul,0,x-415,y-350+70,2,2,0,c_white,1)

//the main GUI
//don't pay attention to the math, it was lots of trial and error for the pixels lol
draw_sprite_ext(spr_gui_mana,0,x+123+(192/3)*2.2,y+273+64,2.2,(2.2*2.1)*(obj_player.mana/obj_player.max_mana),0,c_white,1)//mana box
draw_sprite_ext(spr_gui_hp,0,x+127-(192/3)*2.2,y+273+64,2.2,(2.2*2.1)*(obj_player.hp/obj_player.max_hp),0,c_white,1) //hp box
draw_sprite_ext(spr_gui,3,x+125,y+273,2.2,2.1,0,c_white,1) //change subimage later depending on unlocked abilities

if(object_get_visible(obj_inventory)){
	draw_sprite_ext(obj_inventory.sprite_index,0,x+450,y+100,1.5,1.5,0,c_white,1)
	for(var i = -1; i < obj_inventory.size-1; i++){
		if(obj_inventory.ItemArray[i+1] != noone)
			draw_sprite_ext(obj_inventory.ItemArray[i+1].sprite_index,0,x+450+i*108,y+110,3,3,0,c_white,1)
	}
}