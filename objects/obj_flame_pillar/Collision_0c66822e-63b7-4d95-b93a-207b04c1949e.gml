/// @description Insert description here
// You can write your code in this editor
if(floor(image_index) >= 8 && !other.hit_by_pillar){
	with(other){
		hit_by_pillar = true
		hp -= obj_player.attack2_dmg
	}
	hit_sounds(other)
	knockback(self,other)
}