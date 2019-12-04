/// @description Insert description here
// You can write your code in this editor
//reaper vendor display
var width = view_wport[0]
//if(object_exists(obj_Reaper)){
	//if(instance_exists(obj_vendor)){
		//draw_sprite_ext(obj_vendor.sprite_index,0,x+xoffset+110,y-250,1.5,1.5,0,c_white,1)
		if(!obj_Reaper.hp_fully_upgraded)
		{
			//draw_sprite(spr_vendor_hp,0,width-340,100)
			draw_text(width-340,198," x " + string(obj_Reaper.upgrade_hp_cost))
			draw_sprite_ext(spr_soul,0,width-340-10,213,1.5,1.5,0,c_white,1)
		}
		else {
			//draw_sprite(spr_vendor_hp,1,width-340,100)
			draw_text(width-340-15,115,"FULLY\nUPGRADED")
		}
		if(!obj_Reaper.mana_fully_upgraded)
		{
			draw_text(width-230,198," x " + string(obj_Reaper.upgrade_mana_cost))
			draw_sprite_ext(spr_soul,0,width-230-10,213,1.5,1.5,0,c_white,1)
		}
		else {
			draw_text(width-245,115,"FULLY\nUPGRADED")
		}
		if(!obj_Reaper.inv_fully_upgraded){
			draw_text(width-110,198," x " + string(obj_Reaper.upgrade_inv_cost))
			draw_sprite_ext(spr_soul,0,width-110-10,213,1.5,1.5,0,c_white,1)
		}
		else
			draw_text(width-230+95,115,"FULLY\nUPGRADED")
	//}
//}