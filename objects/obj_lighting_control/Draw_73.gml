if (!surface_exists(surf)) //if surface doesnt exist
{
	surf = surface_create(room_width, room_height); // create it
}
else //otherwise draw it
{
	if (view_current == 0)
	{
		draw_surface(surf, 0, 0);
	}
}