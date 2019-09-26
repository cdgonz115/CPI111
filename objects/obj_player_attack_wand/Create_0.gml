/// @description creates a damage object that hurts enemies at players current direction
//assign damage, knockback values at the bottom

knockback = 10
damage = obj_player.attack1_dmg
image_xscale = image_xscale * 1.5
image_yscale = image_yscale * 1.5

projectile_spd = 2 //pixels per frame
/*
instance_create_layer(x,y,layer,obj_damage_ranged)
with(obj_damage_ranged){
	damage = obj_player_wand.damage
	knockback = obj_player_wand.knockback
	image_xscale = 2
}*/

//go towards click
move_towards_point(mouse_x,mouse_y,projectile_spd)
image_angle = direction