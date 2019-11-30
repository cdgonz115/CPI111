/// @description Insert description here
// You can write your code in this editor
if(!hp_cheat){
	hp_cheat = true
	hp = 5000
	max_hp = hp
	mana = 5000
	max_mana = mana
	souls = 9999999
	if(instance_exists(obj_boss)){
		obj_boss.hp = 20
		//obj_boss.max_hp = obj_boss.hp
	}
}
else {
	hp_cheat = false
	hp = 10
	max_hp = hp
	mana = 10
	max_mana = mana
	souls = 0
}