///@arg player
///@arg enemy
player_ = argument0
enemy_ = argument1

if(player_.playerRecoil != -1)
	{
		player_.playerRecoil -= 1;
		if(!grid_collide(player_,obj_level_generator.grid))
		{
			player_.x += sign(player_.x - enemy_.x)
			player_.y += sign(player_.y - enemy_.y)
		}
	}