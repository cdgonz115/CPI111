/// @description Insert description here
// You can write your code in this editor
if(!obj_player.rolling){
	instance_create_layer(x,y,layer,obj_enemy_damage)
	obj_enemy_damage.damage = damage
	instance_destroy()
}