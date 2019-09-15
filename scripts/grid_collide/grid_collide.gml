///@arg object
///@arg grid
//detect those collisions
var object = argument0
var grid = argument1

var top_right = grid[# (object.bbox_right-1) / CELL_WIDTH, object.bbox_top / CELL_HEIGHT] == VOID
var top_left = grid[# object.bbox_left / CELL_WIDTH, object.bbox_top / CELL_HEIGHT] == VOID
var bottom_right = grid[# (object.bbox_right-1) / CELL_WIDTH, object.bbox_bottom / CELL_HEIGHT] == VOID
var bottom_left = grid[# object.bbox_left / CELL_WIDTH, object.bbox_bottom / CELL_HEIGHT] == VOID

return top_right || top_left || bottom_left || bottom_right