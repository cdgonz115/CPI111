/// @description
x_speed = 0
y_speed = 0
max_speed = 2
acceleration = 2
level_ = 1
exp_ = 0
exp_to_level = power(2,level_) * 50
aggro_rad = (150) //aggro pixel radius
hp = 100
max_hp = 100
mana = 100
max_mana = 100
souls = 0

attack1_cd = false
attack1_spd = room_speed * .8 //1 sec
attack2_cd = false
attack2_spd = room_speed * 1.25
attack2_cost = 15
attack3_cd = false
attack3_spd = room_speed * 1.5
attack3_cost = 30
//recoilSpeed=10;//set recoilSpeed as the speed you wish them to be flung backwards, reduce this if they recoil too fast
playerRecoil=-1;

helmet_equipped = false

//create a camera on player
instance_create_layer(x, y, "Instances", obj_camera)
//change camera size for screen res optimization?

//for non-random map collision
tilemap = layer_tilemap_get_id("Collision")