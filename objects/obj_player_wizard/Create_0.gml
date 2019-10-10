/// @description 
/// @description
x_speed = 0
y_speed = 0
max_speed = 2
acceleration = 2
level_ = 1
exp_ = 95
exp_to_level = power(2,level_) * 50
aggro_rad = (150) //aggro pixel radius

max_hp = 5
hp = max_hp
max_mana = 50
mana = max_mana
mana_regen = 5
souls = 0

roll_cd = false
roll_cd_time = 2
rollspeed = 2
rolling = false

//attack stats
//attack 1- basic attack
attack1_dmg = 1
attack1_cd = false
attack1_spd = room_speed * .8 //1 sec

//attack 2- magic missiles
attack2_dmg = .5
attack2_cd = false
attack2_spd = room_speed * .3
casted2 = false //for mm animation
attack2_cost = 4

//attack 3- blast nova
attack3_dmg = 1 //per wave
attack3_cd = false
attack3_spd = room_speed * 1.5
attack3_cost = 0
//recoilSpeed=10;//set recoilSpeed as the speed you wish them to be flung backwards, reduce this if they recoil too fast
playerRecoil=-1;

talking = false
helmet_equipped = false

//create a camera on player
instance_create_layer(x, y, "Instances", obj_camera)
//change camera size for screen res optimization?
inventory = instance_create_layer(x, y, "Instances", obj_inventory)

//for non-random map collision
tilemap = layer_tilemap_get_id("Collision")

