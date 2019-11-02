/// @description Insert description here
// You can write your code in this editor

if(!other.hit_by_pillar){
	with(other){
		hit_by_pillar = true
		hp -= obj_player_warlock.attack2_dmg
		show_debug_message("gothere")
	}
	hit_sounds(other)
	knockback(self,other)
}