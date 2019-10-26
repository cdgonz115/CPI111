/// @description
x_speed = 0
y_speed = 0
x_input = 0
y_input = 0
max_speed = 2
acceleration = 2
level_ = 1
exp_ = 95
exp_to_level = level_ * 50 + 50//power(2,level_) * 50
aggro_rad = (150) //aggro pixel radius

max_hp = 10
hp = 10
max_mana = 50
mana = max_mana
mana_regen = 5
souls = 117000

roll_cd = false
roll_cd_time = 2
rollspeed = 2
rolling = false

//attack stats
//attack 1- basic attack
attack1_dmg = 1
attack1_cd = false
attack1_spd = room_speed * .8 //1 sec

//attack 2- whirlwind
attack2_dmg = 2
attack2_cd = false
attack2_spd = room_speed * 1.5
attack2_cost = 20

//attack 3- shockwave
attack3_dmg = 1 //per wave
attack3_cd = false
attack3_spd = room_speed * 1.5
attack3_cost = 0

//attack 4- shield block
attack4_dmg = 0
attack4_cd = false
attack4_spd = 4* room_speed
attack4_cost = 10

//attack 5- ???
attack5_dmg = 0
attack5_cd = false
attack5_spd = 0
attack5_cost = 0

//recoilSpeed=10;//set recoilSpeed as the speed you wish them to be flung backwards, reduce this if they recoil too fast
playerRecoil=-1;

//states
dead = false
talking = false
knocked_back = false
knock_time = 0.1 * room_speed
helmet_equipped = false
recently_created = true

//animation stuff
up = spr_warrior_up
down = spr_warrior_down
side = spr_warrior_side

//create a camera on player
instance_create_layer(x, y, "Instances", obj_camera)
//change camera size for screen res optimization?
inventory = instance_create_layer(x, y, "Instances", obj_inventory)

//for non-random map collision
tilemap = layer_tilemap_get_id("Collision")