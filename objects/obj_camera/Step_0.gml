/// @description Insert description here
// You can write your code in this editor
if not instance_exists(target) exit
if(obj_game_control.game_state != -1) //if you're not dead
{
	x = lerp(x, target.x, .1)
	y = lerp(y, target.y, .1)
	
	x = clamp(x, width/2 + CELL_WIDTH, room_width-width/2 - CELL_WIDTH)
	y = clamp(y, height/2 + CELL_HEIGHT, room_height-height/2 - CELL_HEIGHT)
	if(obj_game_control.boss_floor){
		camera_set_view_pos(view_camera[0], x-width/1.32, y-height/1.35)
	}
	else {
		camera_set_view_pos(view_camera[0], x-width/2, y-height/2)
	}
		
	if(!obj_player.map_active)
	{
		view_visible[1]=false
	}
	else
	{		
		view_visible[1]=true
		camera_set_view_pos(view_camera[1],-room_width*2,0)
		camera_set_view_size(view_camera[1],(room_width+room_width/4)*2,(room_height*2))
	}

}
else
{
	view_visible[1]=false
	camera_set_view_pos(view_camera[0],0,0)
	camera_set_view_size(view_camera[0],room_width,room_height)	
}