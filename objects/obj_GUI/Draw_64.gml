/// @description GUI and inventory

draw_set_color(c_white)
draw_text(x-425,y-350,"Level: " + string(obj_player.level_))
draw_text(x-425,y-350+30,"EXP: " + string(obj_player.exp_) + "/ " + string(obj_player.exp_to_level))
draw_text(x-425,y-350+60,"Floor: " + string(obj_game_control.floor_))
draw_text(x-425,y-350+90,"   x " + string(obj_player.souls))
draw_sprite_ext(spr_soul,0,x-415,y-350+70+30,2,2,0,c_white,1)

//the main GUI
//don't pay attention to the math, it was lots of trial and error for the pixels lol
if(obj_player.hp >=0){
	draw_sprite_ext(spr_gui_mana,0,x+123+(192/3)*2.2,y+273+64,2.2,(2.2*2.1)*(obj_player.mana/obj_player.max_mana),0,c_white,1)//mana box
	draw_sprite_ext(spr_gui_hp,0,x+127-(192/3)*2.2,y+273+64,2.2,(2.2*2.1)*(obj_player.hp/obj_player.max_hp),0,c_white,1) //hp box
	draw_sprite_ext(spr_gui,3,x+125,y+273,2.2,2.1,0,c_white,1) //change subimage later depending on unlocked abilities
	draw_text(x-55,y+300,"HP: " + string(obj_player.hp) + "/" + string(obj_player.max_hp))
	draw_text(x+220,y+300,"MP: " + string(obj_player.mana) + "/" + string(obj_player.max_mana))
}
//inventory display
var xoffset = 450
var yoffset = 10
if(object_get_visible(obj_inventory)){
	//var xslot = 5*16 //aprox size of inventory slot box
	draw_sprite_ext(obj_inventory.sprite_index,obj_inventory.image_index,x+xoffset+110,y,1.5,1.5,0,c_white,1)
	//draw 1st item, then 2nd...etc left to right top to bottom
	for(var col = -1; col < obj_inventory.max_size-1; col++){
		if((col+1) % 3 == 0 && (col+1) >0){
				yoffset += 100
		}
		if(obj_inventory.ItemArray[col+1] != noone){
			draw_sprite_ext(obj_inventory.ItemArray[col+1].sprite_index,0,x+xoffset+((col+1)%3)*108,y+yoffset,3,3,0,c_white,1)
		}
	}
}
if(object_exists(obj_Reaper)){
	if(obj_Reaper.vendor.visible){
		draw_sprite_ext(obj_vendor.sprite_index,0,x+xoffset+110,y-250,1.5,1.5,0,c_white,1)
		//draw_text(x+xoffset+110,y-250,"  x " + string(obj_Reaper.upgrade_hp_cost))
		draw_text(x+xoffset-20,y-232," x " + string(obj_Reaper.upgrade_hp_cost))
		draw_sprite_ext(spr_soul,0,x+xoffset-30,y-222,1.5,1.5,0,c_white,1)
		draw_text(x+xoffset-20+110,y-232," x " + string(obj_Reaper.upgrade_mana_cost))
		draw_sprite_ext(spr_soul,0,x+xoffset-30+110,y-222,1.5,1.5,0,c_white,1)
		if(obj_Reaper.upgrade_inv <9){
			draw_text(x+xoffset-20+110*2,y-232," x " + string(obj_Reaper.upgrade_inv_cost))
			draw_sprite_ext(spr_soul,0,x+xoffset-30+110*2,y-222,1.5,1.5,0,c_white,1)
		}
		else {
			draw_text(x+xoffset-20+110*2,y-232,"FULLY UPGRADED")
		}
	}
}