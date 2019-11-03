///@arg x
///@arg y
///@arg grid
//detect those collisions
var x_ = argument0
var y_ = argument1
var grid = argument2

return grid[# x_ / CELL_WIDTH, y_ / CELL_HEIGHT] == VOID //return true if x,y is on a wall tile