layerId=layer_get_id("Instances")
if(layer_get_visible(layerId) && room==rm_dungeon)
{
map_active=true
layer_set_visible(layerId,false)
map_active=false
layer_set_visible(layerId,true)
}
