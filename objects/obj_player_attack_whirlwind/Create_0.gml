/// @description 
x = obj_player.x
y = obj_player.y

knockback = 10
damage = obj_player.damage
//create 4 hiboxes
for(var i = 0; i < 4; i++) {
	global.dmg = instance_create_layer(x,y,"Instances",obj_damage)
	global.dmg.damage = damage
	global.dmg.knockback = knockback
	//create a full circle of hitbox
	global.dmg.image_angle = 90*i
	global.dmg.image_xscale = 1.2
	global.dmg.image_yscale = 1.2
}
//obj_damage.image_xscale = 3
//obj_damage.image_yscale = 1.5
