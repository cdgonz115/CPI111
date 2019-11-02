/// @description hit the enemy
if(other != obj_player && !other.dead)
{
	other.hp -= damage
	//hit sounds
	hit_sounds(other)
	//knockback
	knockback(self,other)
	knocked_back = true
	alarm[11] = 5 //time knocked back

}