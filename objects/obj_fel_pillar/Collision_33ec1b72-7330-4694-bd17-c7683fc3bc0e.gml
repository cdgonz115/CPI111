/// @description Insert description here
// You can write your code in this editor

if(!other.hit_by_pillar){
	other.hit_by_pillar = true
	other.hp -= damage
	hit_sounds(other)
	knockback(self,other)
}