/// @description 
//cheats
hp_cheat = false

x_speed = 0
y_speed = 0
x_input = 0
y_input = 0
max_speed = 2
acceleration = 2
level_ = 1
exp_ = 0
exp_to_level = level_ * 50 + 50
aggro_rad = (150) //aggro pixel radius

max_hp = 5
hp = max_hp
max_mana = 40
mana = max_mana
mana_regen = 2.5 // per sec
souls = 0

//won't need to use this section
roll_cd = false //using for rune tele right click
roll_cd_time = 2 * room_speed
rollspeed = 2 //don't use
rolling = false //don't use


//attack stats
//attack 1- soul siphon basic attack
attack1_dmg = 1
siphoning = false
//attack1_cd = false
attack1_spd = room_speed * 1 //fire rate
//casted1 = false //for mm animation

//attack 2- fel pillar
attack2_dmg = 3
attack2_cd = false
attack2_spd = room_speed * 3 //cooldown
attack2_cost = 30

//attack 3- summon an imp that explodes
attack3_dmg = 2 
attack3_cd = false
attack3_spd = room_speed * 2
attack3_cost = 15

//attack 4- flame shield
attack4_dmg = 1
attack4_cd = false
attack4_spd = 4* room_speed
attack4_cost = 10

//attack 5- mind control
//uses channeling
attack5_dmg = 1 //ramps from 1 to 3 damage over 2 sec ?
attack5_cd = false
attack5_spd = 1*room_speed //damages once per second and 1 sec cd
attack5_cost_initial = 10 //initial
attack5_cost_channel = 5 //10 per second after initial


//right click/space bar
tele_cd = false
tele_cd_time = 4 * room_speed
tele_cost = 0 

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
charging = false //don't even use but it's for inheritance errors crap

//animation
up = spr_warlock_up
down = spr_warlock_down
side = spr_warlock_side


//create a camera on player
camera = instance_create_layer(x, y, "Instances", obj_camera)
//change camera size for screen res optimization?
inventory = instance_create_layer(x, y, "Instances", obj_inventory)

//for non-random map collision
tilemap = layer_tilemap_get_id("Collision")

