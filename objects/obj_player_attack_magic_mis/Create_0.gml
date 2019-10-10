/// @description creates a damage object that hurts enemies at players current direction
//assign damage, knockback values at the bottom
hit = false
knockback = 10
damage = obj_player_wizard.attack2_dmg
image_xscale = image_xscale * 1.5
image_yscale = image_yscale * 1.5

projectile_spd = 3 //pixels per frame

//go towards mouse
move_towards_point(mouse_x,mouse_y,projectile_spd)
image_angle = direction