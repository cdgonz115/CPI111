/// @description Insert description here
// You can write your code in this editor
if(floor(image_index) >= 8 && !other.hit_by_pillar){
	with(other){
		if(!hit_by_pillar){
			hp -= obj_player.attack2_dmg
			hit_by_pillar = true
		}
	}
	hit_sounds(other)
	knockback(self,other)
}