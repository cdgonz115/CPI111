/// @description attack 2- flame pillar

if(!attack2_cd && (mana >=attack2_cost)) {
	damage = attack2_dmg
	instance_create_layer(mouse_x,mouse_y,"Instances",obj_fel_pillar_rune)
	attack2_cd = true
	alarm[2] = attack2_spd
	mana -= attack2_cost
}