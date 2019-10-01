/// @description Insert description here
// You can write your code in this editor
event_inherited()
//dialogue
text[0] = "Oh, you made it back... but not in one piece... heh, heh, heh..."
text[1] = "Now that you're here, let me take a look at those souls..."


//Vendor
//Upgrade levels - 1 means have not purchased upgrade, 2 means purchased once, etc.
//it was easier for calculations ok?! lol
vendor = instance_create_layer(x,y,"Instances",obj_vendor)
upgrade_hp = 1
upgrade_hp_cost = power(2,upgrade_hp) * 50

upgrade_mana = 1
upgrade_mana_cost = power(2,upgrade_mana) * 50

alarm[11] = 1
//upgrade_inv = obj_player.inventory.max_size
//upgrade_inv_cost = power(3,upgrade_inv) * 50