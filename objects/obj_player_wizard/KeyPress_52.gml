/// @description attack 5 - lightning beam

if(!dead && !attack5_cd && (mana >=attack5_cost_initial) && !talking && !channeling) {
	mana -= attack5_cost_initial
	attack5_cd = true
	channeling = true
	instance_create_layer(x,y,"Instances",obj_lightning_beam_charge)
	//alarm[5] = attack5_spd
}