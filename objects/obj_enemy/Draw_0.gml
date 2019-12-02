if(!obj_player.map_active && object_index != obj_boss)
{
	if(hp<max_hp && hp >0) {
		draw_healthbar(x-(sprite_width/2+1),y-(sprite_height/2+8),x+(sprite_width/2+1),y-(sprite_height/2+6),(hp/max_hp)*100,c_black,c_red,c_red,0,1,1)
		//draw_text_color(x-(sprite_width/2+1),y-(sprite_height/2+8),string(hp) + "/" + string(max_hp),c_white,c_white,c_white,c_white,1)
		//draw_text_transformed_color(x,y-(sprite_height/2+4),string(hp) + "/" + string(max_hp),0.25,0.25,0,c_white,c_white,c_white,c_white,1)
	}
	draw_sprite_ext(spr_player_shadow,0,self.x,self.y+5,1,1,0,c_white,.8)
	draw_self()
}
else if(object_index == obj_boss){
	draw_self()
}