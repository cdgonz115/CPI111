/// @description Insert description here
// You can write your code in this editor
hp = 200
max_hp = hp
spd = 0.6
hit_by_nova = false
hit_by_beam = false
hit_by_pillar = false
hit_by_fire_armor = false
dead = false

knockback_dist = 20

//attack damages
//scythe swipe
attack1_dmg = 20
//dark wave
attack2_dmg = 10 //per wave
can_wave = true
waves = 0
//spawn minion
//attack3_dmg = 
//Dark Pool
attack4_dmg = 30


player_hit = false
attacking = false
which_attack = 0
time_between = 7
//decided = false
alarm[1] = 5*room_speed //time between each attack, first one is 5 sec, then all others is 10

//animation state sprites
idle = spr_Boss_idle
swiping = spr_Boss_swipe
tapping = spr_Boss_tap
flapping = spr_Boss_flap
flapped = 0
withdrawing = spr_Boss_withdraw
withdrawn = false