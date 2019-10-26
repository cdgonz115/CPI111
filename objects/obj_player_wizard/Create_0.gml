/// @description 

x_speed = 0
y_speed = 0
x_input = 0
y_input = 0
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
souls = 1700000

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
attack2_spd = room_speed * .25 //fire rate
casted2 = false //for mm animation
attack2_cost = 4

//attack 3- blast nova
attack3_dmg = 2 //once per wave
attack3_cd = false
attack3_spd = room_speed * 1.5
attack3_cost = 0

//attack 4- bubble shield
attack4_dmg = 0
attack4_cd = false
attack4_spd = 4* room_speed
attack4_cost = 10

//attack 5- lightning beam
attack5_dmg = 1 //ramps from 1 to 3 damage over 2 sec ?
attack5_cd = false
attack5_spd = 1*room_speed //damages once per second and 1 sec cd
attack5_cost_initial = 10 //initial
attack5_cost_channel = 4 //per second after initial

tele_cd = false
tele_cd_time = 4 * room_speed
tele_cost = 10 

//recoilSpeed=10;//set recoilSpeed as the speed you wish them to be flung backwards, reduce this if they recoil too fast
playerRecoil=-1;

//states
dead = false
talking = false
knocked_back = false
knock_time = 0.5 * room_speed
helmet_equipped = false
recently_created = true
channeling = false

//animation
up = spr_wizard_up
down = spr_wizard_down
side = spr_wizard_side

//create a camera on player
instance_create_layer(x, y, "Instances", obj_camera)
//change camera size for screen res optimization?
inventory = instance_create_layer(x, y, "Instances", obj_inventory)

//for non-random map collision
tilemap = layer_tilemap_get_id("Collision")

