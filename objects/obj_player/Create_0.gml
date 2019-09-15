/// @description
x_speed = 0
y_speed = 0
max_speed = 1
acceleration = 0.5
level_ = 1
exp_ = 0
aggro_rad = (150) //aggro pixel radius
hp = 100
souls = 0

attack1_cd = false
attack1_spd = 30
//recoilSpeed=10;//set recoilSpeed as the speed you wish them to be flung backwards, reduce this if they recoil too fast
playerRecoil=-1;



//create a camera on player
instance_create_layer(x, y, "Instances", obj_camera)
//change camera size for screen res optimization?

//for non-random map collision
tilemap = layer_tilemap_get_id("Collision")