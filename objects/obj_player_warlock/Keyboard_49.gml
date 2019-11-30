/// @description attack 2- fel pillar

if(!attack2_cd && (mana >=attack2_cost) && line_of_sight(x,y,mouse_x,mouse_y)) {
	damage = attack2_dmg
	audio_play_sound(flame_pillar,10,0)
	instance_create_layer(mouse_x,mouse_y,"Instances",obj_fel_pillar_rune)
	attack2_cd = true
	alarm[2] = attack2_spd
	mana -= attack2_cost
}