//layerId=layer_get_id("Instances")
if(room==rm_dungeon && !map_active)
{
	map_active=true
	//layer_set_visible("Instances",false)
	//layer_set_visible("Level",false)
}
else
{
	map_active=false
	//layer_set_visible("Instances",true)
	//layer_set_visible("Level",true)
}
