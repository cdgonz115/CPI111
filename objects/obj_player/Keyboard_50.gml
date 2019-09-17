/// @description Shockwave Attack3
var mouse_dir = point_direction(x,y,mouse_x,mouse_y)
var xx = lengthdir_x(sprite_width,mouse_dir)
var yy = lengthdir_y(sprite_height,mouse_dir)

if((!attack3_cd) && (mana >=attack3_cost)) {
	damage = 1
	for(var i = 0; i < 4; i++) {
		instance_create_layer(x+xx*i,y+yy*i,"Instances",obj_player_attack_shockwave)
		with(obj_player_attack_shockwave){
			if(mouse_dir<90 || mouse_dir>270) {
				image_xscale = 1; //right
				//global.dmg = instance_create_layer(x+xx*i,y+yy*i,"Instances",obj_player_attack_shockwave)
			}
			else if (mouse_dir>=90 && mouse_dir<=270) {
				image_xscale = -1 //left 
				//image_yscale = -1
				//global.dmg = instance_create_layer(x+xx*i,y+yy*i,"Instances",obj_player_attack_shockwave)
			}
			//image_angle = mouse_dir
			//instance_create_layer(x,y,"Instances",obj_player_attack_shockwave)
		}
		attack3_cd = true
		alarm[3] = attack3_spd
	}
	mana -= attack3_cost
}