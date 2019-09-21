/// @description GUI and inventory

draw_set_color(c_white)
draw_text(x-425,y-350,"Level: " + string(obj_player.level_))
draw_text(x-425,y-350+30,"EXP: " + string(obj_player.exp_) + "/ " + string(obj_player.exp_to_level))
draw_text(x-425,y-350+60,"   x " + string(obj_player.souls))
draw_sprite_ext(spr_soul,0,x-415,y-350+70,2,2,0,c_white,1)

//the main GUI
//don't pay attention to the math, it was lots of trial and error for the pixels lol
if(obj_player.hp >=0){
	draw_sprite_ext(spr_gui_mana,0,x+123+(192/3)*2.2,y+273+64,2.2,(2.2*2.1)*(obj_player.mana/obj_player.max_mana),0,c_white,1)//mana box
	draw_sprite_ext(spr_gui_hp,0,x+127-(192/3)*2.2,y+273+64,2.2,(2.2*2.1)*(obj_player.hp/obj_player.max_hp),0,c_white,1) //hp box
	draw_sprite_ext(spr_gui,3,x+125,y+273,2.2,2.1,0,c_white,1) //change subimage later depending on unlocked abilities
}
//inventory display
var xoffset = 450
var yoffset = 10
if(object_get_visible(obj_inventory)){
	var xslot = 5*16 //aprox size of inventory slot box
	draw_sprite_ext(obj_inventory.sprite_index,6,x+xoffset+110,y,1.5,1.5,0,c_white,1)
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