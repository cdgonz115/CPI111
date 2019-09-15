/// @description 
//creates a damage object that hurts enemies at players current direction
//assigns damage, knockback values below

target = obj_player //easier to type target and easier to change also owner
dir = 0 //direction player is facing when using an attack
knockback = 10
damage = 1

//right
if (target.sprite_index == spr_player_walk_r) {
	sprite_index = spr_player_attack_r
	x = target.x +8
	y = target.y
	instance_create_layer(x+5,y+5,"Instances",obj_damage)
	dir = 1
}//left
else if (target.sprite_index == spr_player_walk_l){
	sprite_index = spr_player_attack_r
	image_xscale = -1;
	x = target.x -8
	y = target.y
	instance_create_layer(x-5,y+5,"Instances",obj_damage)
	dir = 2
}//down
else if (target.sprite_index == spr_player_walk_d) {
	sprite_index = spr_player_attack_d
	x = target.x
	y = target.y + 15
	instance_create_layer(x,y+7,"Instances",obj_damage)
	dir = 3
}//up
else if (target.sprite_index == spr_player_walk_u){
	sprite_index = spr_player_attack_d
	image_yscale = -1
	x = target.x
	y = target.y - 10
	instance_create_layer(x,y-3,"Instances",obj_damage)
	dir = 4
}
//assign values
obj_damage.knockback = self.knockback
obj_damage.damage = self.damage

