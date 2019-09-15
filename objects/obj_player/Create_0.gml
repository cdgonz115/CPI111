/// @description
x_speed = 0
y_speed = 0
max_speed = 2

recoilSpeed=10;//set recoilSpeed as the speed you wish them to be flung backwards, reduce this if they recoil too fast
playerRecoil=-1;

char_level = 1
aggro_rad = (150) //aggro pixel radius

//create a camera on player
instance_create_layer(x, y, "Instances", obj_camera)
//change camera size for screen res optimization?

//for non-random map collision
tilemap = layer_tilemap_get_id("Collision")