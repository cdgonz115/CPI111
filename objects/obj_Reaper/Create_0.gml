/// @description Insert description here
// You can write your code in this editor
event_inherited()

originx = x
originy = y
//dialogue
text[0] = "Oh, you made it back... but not in one piece... heh, heh, heh..."
text[1] = "Now that you're here, let me take a look at those souls..."


//Vendor
//Upgrade levels - 1 means have not purchased upgrade, 2 means purchased once, etc.
//it was easier for calculations ok?! lol
upgrade_hp = 1
upgrade_hp_cost = 5 //initial cost, increases by 5 each time.
upgrade_hp_amount = 1 //increase hp by 1 per upgrade
hp_fully_upgraded = false
upgrade_max_hp = 30 //can increase your total health by 30 points max

upgrade_mana = 1
upgrade_mana_cost = 10 //10 for first, increases by 10
upgrade_mana_amount = 2 //increase mana by 2 per upgrade
mana_fully_upgraded = false
upgrade_max_mana = 30 //can increase your total mana by 30 points max


inv_fully_upgraded = false
//see alarm 11 for other inventory upgrade stuff

alarm[11] = 3

//for boss testing
if(room == rm_boss){
	x = -100
}