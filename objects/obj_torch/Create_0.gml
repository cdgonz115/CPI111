/// @description 
randomize()
var grav = irandom_range(100,120)
var xx = x-2
var yy = y-3
fire = instance_create_layer(x,y,layer,obj_fire_control)
with(fire){
	part_type_gravity(fire_type, .05, grav)
	part_emitter_region(fire_system,fire_emitter, xx, xx+5, yy+5, yy, ps_shape_rectangle, ps_distr_linear)
}

smoke = instance_create_layer(x,y,layer,obj_smoke_control)
with(smoke){
	part_type_gravity(fire_type, .01, grav)
	part_emitter_region(fire_system,fire_emitter, xx, xx+5, yy+5, yy, ps_shape_rectangle, ps_distr_linear)
}