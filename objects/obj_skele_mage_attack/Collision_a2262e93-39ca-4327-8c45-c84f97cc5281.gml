/// @description 

//move_bounce_solid(true)
if(!collided){
	collided = true
	vspeed = -vspeed
	hspeed = -hspeed
	image_angle += 180
}