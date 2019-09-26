/// @description 
obj_game_control.game_state = 2 //in a randomized state //used for controls
randomize()

// get the tile layer map id from room //need to have a tile layer named "Walls"
var wall_map_id = layer_tilemap_get_id("Walls")

//set up grid/"size" of dungeon floor
width = room_width / CELL_WIDTH
height = room_height / CELL_HEIGHT
grid = ds_grid_create(width,height)
ds_grid_set_region(grid, 0, 0, width, height, VOID) //an actual grid based on pixel locations
shadow_surface = noone

//create the controller at position //starts in center and sets floor tiles
var controller_x = width / 2
var controller_y = height / 2
var controller_direction = irandom(3) //0 right, 1 up, 2 left, 3 down
var steps = irandom_range(1000,1600) //basically # floor tiles
var direction_change_odds = 2 //1 is blocky, 10 is long hallways, 2 is good mix

var player_start_x = controller_x * CELL_WIDTH + CELL_WIDTH/2
var player_start_y = controller_y * CELL_HEIGHT + CELL_HEIGHT/2
obj_player.x = player_start_x
obj_player.y = player_start_y
//instance_create_layer(player_start_x,player_start_y, "Instances", obj_player)



var last_step = 0 // for help placing things
//place the floor tiles in grid (not textured yet)
repeat (steps) {
	last_step++
	grid[# controller_x, controller_y] = FLOOR
	//grid[# controller_x+1, controller_y+1] = FLOOR //makes bottom right tile also floor, creates 2-width hallways
	//randomize the direction
	if (irandom(direction_change_odds) == direction_change_odds)
		controller_direction = irandom(3)
		
	//move the controller
	var x_direction = lengthdir_x(1, controller_direction * 90)
	var y_direction = lengthdir_y(1, controller_direction * 90)
	controller_x += x_direction
	controller_y += y_direction
	
	//make sure we don't go outside the grid and stay one block away from edge
	if (controller_x < 4 || controller_x >= width-4)
		controller_x += -x_direction * 2
	if (controller_y < 4 || controller_y >= height-4)
		controller_y += -y_direction * 2
		
	//place ladder to next level at "end" of level
	if(steps-last_step == 1){
		var ladder_x = controller_x * CELL_WIDTH + CELL_WIDTH/2
		var ladder_y = controller_y * CELL_HEIGHT + CELL_HEIGHT/2
		instance_create_layer(ladder_x,ladder_y,"Instances",obj_ladder)
	}
}

//cleanup/spawning
for (var col = 1; col < height-1; col++){
	for (var row = 1; row < width-1; row++){
		
		var curr_grid_pos_x = row * CELL_WIDTH + CELL_WIDTH/2
		var curr_grid_pos_y = col * CELL_HEIGHT + CELL_HEIGHT/2
		
		var north_tile = grid[# row,col-1] == VOID //returns 1 or 0 if it's that type of tile
		var west_tile = grid[# row-1,col] == VOID
		var east_tile = grid[# row+1,col] == VOID
		var south_tile = grid[# row,col+1] == VOID
		var tile_index = NORTH*north_tile + WEST*west_tile + EAST*east_tile + SOUTH*south_tile + 1 //creates binary for tileset for dungeon level
		
		var n_ = grid[# row, col-1]!=FLOOR
		var s_ = grid[# row, col+1]!=FLOOR
		var w_ = grid[# row-1, col]!=FLOOR
		var e_ = grid[# row+1, col]!=FLOOR
		
		var is_penta = false
			
		//cleanup
		if (grid[# row,col] != FLOOR)//checks wall tiles
		{ 
			if (tile_index == 1)//makes so there's not 1 tile sections
			{ 
				grid[# row,col] = FLOOR
				is_penta = true
			}
		}
		//spawning on floor tiles
		else if (position_empty(curr_grid_pos_x,curr_grid_pos_y)) //if it is a floor, checks if there is already an object
		{ 
			//spawn probabilities
			//chests
			var chest_prob = 0.2 // probability of chest dropping on floor ~2-6
			var max_chests = 4
			var curr_chests = 0
			//baddies
			var slime_prob = 0.00
			var skele_prob = 0.00
			var skele_mage_prob = 0.01
			
			//add a chest(maybe)!
			if ((curr_chests < max_chests) && (random(1.0)<chest_prob) && ((n_&&e_&&w_) || (s_&&w_&&e_) || (w_&&s_&&n_) || (e_&&s_&&n_))) //checks to spawn chest only in corner surrounded by 3 walls
			{ 
				curr_chests++
				instance_create_layer(curr_grid_pos_x,curr_grid_pos_y, "Instances", obj_chest)
				//if(curr_chests == 0) add a chest if there aren't any?
			}
			/*else if ((curr_chests == 0) && ((n_&&e_&&w_) || (s_&&w_&&e_) || (w_&&s_&&n_) || (e_&&s_&&n_))) //issue is, this will always spawn the one near the top left
			{
				curr_chests++
				instance_create_layer(curr_grid_pos_x,curr_grid_pos_y, "Instances", obj_chest)
			}*/
			
			//add baddies!
			if (position_empty(curr_grid_pos_x,curr_grid_pos_y)) //check if there's already an object
			{
				if (random(1.0) < slime_prob)
				{
					instance_create_layer(curr_grid_pos_x, curr_grid_pos_y, "Instances", obj_slime)
				}/*
				else if (random(1.0) <slime_prob*.5)
				{
					instance_create_layer(curr_grid_pos_x, curr_grid_pos_y, "Instances", obj_slime1)
				}
				else if (random(1.0) <slime_prob*.3)
				{
					instance_create_layer(curr_grid_pos_x, curr_grid_pos_y, "Instances", obj_slime2)
				}*/
				else if (random(1) < skele_prob)
				{
					instance_create_layer(curr_grid_pos_x, curr_grid_pos_y, "Instances", obj_skeleton)	
				}
				else if (random(1)< skele_mage_prob)
				{
					instance_create_layer(curr_grid_pos_x, curr_grid_pos_y, "Instances", obj_skeleton_mage)
				}
			}
		}
		
		if (grid[# row,col] != FLOOR) //ignores newly set floor tiles
		{
			tilemap_set(wall_map_id, tile_index, row, col) //set wall tiles to be which kind they are
			if(tile_index == 6 && random(1)<0.5)
				instance_create_layer(curr_grid_pos_x,curr_grid_pos_y, "Level", obj_wall_blood)
			if(tile_index == 4 && random(1)<0.2)
				instance_create_layer(curr_grid_pos_x,curr_grid_pos_y, "Level", obj_wall_chains)
		}
		else //set floor tiles
		{
			//if(is_penta && random(1)<0.2)
				//tilemap_set(layer_tilemap_get_id("Pentas"),1,row,col)
			//else
				tilemap_set(layer_tilemap_get_id("Floor"),1,row,col)
				if(is_penta && random(1)<0.2)
					instance_create_layer(curr_grid_pos_x,curr_grid_pos_y, "Level", obj_penta)
		}
	}
}