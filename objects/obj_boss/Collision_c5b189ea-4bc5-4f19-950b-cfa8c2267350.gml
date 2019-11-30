/// @description knockback

//knockback
tilemap = layer_tilemap_get_id("Collision")
if(other.object_index == obj_player_wizard)
	audio_play_sound(foxhit2,15,0)
else if(other.object_index == obj_player)
	audio_play_sound(bunnyhit,15,0)
var dir = point_direction(self.x,self.y,other.x,other.y)
var xforce = lengthdir_x(self.knockback_dist,dir-180)
var yforce = lengthdir_y(self.knockback_dist,dir-180)

with(other){
	
	var x_predict = x - xforce
	var y_predict = y - yforce
	
	if(tilemap_get_at_pixel(tilemap,x_predict,y)) {
		while (tilemap_get_at_pixel(tilemap,x_predict,y)){
				x_predict += sign(xforce)
			}
	}
	x = x_predict
	if(tilemap_get_at_pixel(tilemap,x,y_predict)) {
		while (tilemap_get_at_pixel(tilemap,x,y_predict)){
				y_predict += sign(yforce)
			}
	}
	y = y_predict
	
	hp -= 10
}