/// @description hits an enemy
if(!hit && !other.dead){
	other.hp -= damage
	damage = 0
	hit = true
	hit_sounds(other)
	
	//knockback
	knockback(self,other)
	alarm[0] = 5
}