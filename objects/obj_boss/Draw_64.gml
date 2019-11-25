/// @description Insert description here
// You can write your code in this editor

var height = view_hport[0]
var width = view_wport[0]
draw_set_halign(fa_center)

draw_healthbar(width/2-300,+20,width/2+300,+50,(obj_boss.hp/obj_boss.max_hp)*100,c_black,c_red,c_red,0,1,1)
draw_text(width/2,25,"The Reaper")