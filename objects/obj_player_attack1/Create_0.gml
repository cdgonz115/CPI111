/// @description creates a damage object that hurts enemies at players current direction

target = obj_player //easier to type target and easier to change also owner
dir = 0 //direction player is facing when using an attack
knockback_dist = 10
damage = obj_player.attack1_dmg

if (target.sprite_index == target.side) {
	if(target.image_xscale == 1) {//right
		sprite_index = spr_player_attack_r
		x = target.x + 8
		y = target.y
		dir = 1
	}
	else { //left
		sprite_index = spr_player_attack_r
		image_xscale = -1
		x = target.x -8
		y = target.y
		dir = 2
	}
//}//left
//else if (target.sprite_index == spr_player_walk_l2){
	
}//down
else if (target.sprite_index == target.down) {
	sprite_index = spr_player_attack_d
	x = target.x
	y = target.y + 15
	dir = 3
}//up
else if (target.sprite_index == target.up){
	sprite_index = spr_player_attack_d
	image_yscale = -1
	x = target.x
	y = target.y - 10
	dir = 4
}
//attack animation scaling
image_xscale = image_xscale * 2
image_yscale = image_yscale * 2

audio_play_sound(basicswipe,10,0)

instance_create_layer(x,y,"Instances",obj_damage)
//moves hitbox to where you're facing
obj_damage.image_angle = point_direction(x, y, mouse_x, mouse_y);
obj_damage.image_xscale = 1.2 //hitbox size
//assign values
obj_damage.knockback_dist = knockback_dist
obj_damage.damage = damage