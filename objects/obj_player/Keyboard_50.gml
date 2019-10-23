/// @description Shockwave Attack3
var mouse_dir = point_direction(x,y,mouse_x,mouse_y)
var xx = lengthdir_x(sprite_width,mouse_dir)
var yy = lengthdir_y(sprite_height,mouse_dir)
var collided = false

if((!dead && !attack3_cd) && (mana >=attack3_cost) && !talking) {
	//create 4 separate shockwave objects in a row
	for(var i = 0; i < 4; i++) {
		instance_create_layer(x+(sign(image_xscale)*(xx*i)),y+yy*i,"Instances",obj_player_attack_shockwave)
		with(obj_player_attack_shockwave){
			damage = obj_player.attack3_dmg
			//change shockwave according to mouse location
			if(mouse_dir<90 || mouse_dir>270) {
				image_xscale = 1; //right
			}
			else if (mouse_dir>=90 && mouse_dir<=270) {
				image_xscale = -1 //left 
			}
			if((mouse_dir<45 || mouse_dir>315) || (mouse_dir>135 && mouse_dir<225)){
				x += sign(image_xscale)*5
			}
			else if(mouse_dir>45 && mouse_dir<135){ //up
				y -= 5
			}
			else if(mouse_dir<315 && mouse_dir>225){ //down
				y += 5
			}
			//if it hits a wall or chest, stop creating shockwaves
			if(instance_exists(obj_level_generator)){
				if(grid_collide(self,obj_level_generator.grid) || place_meeting(x,y,obj_collidable)){
					collided = true
					instance_destroy()
				}
			}
		}
		if(collided)
			break;
	}
	attack3_cd = true
	alarm[3] = attack3_spd
	mana -= attack3_cost
}