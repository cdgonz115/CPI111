/// @description Clean Up
//When room ends, get rid of surfaces
if (surface_exists(surf)) 
{
	surface_free(surf);
}
