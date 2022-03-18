
if(hitTimer < 0)
{
	hitTimer = 10;
	
	if(hp > 0)
	{
		

		hp--;
		show_debug_message("hit");
		flash = 3;
	} 
	else
	{
		with(O_Gun) instance_destroy();

		instance_change(O_DeadPlayer, true); 
		// turns the player object into the O_DeadPlayer object; you might want
		// that, you might not. But here is where you would call a losing screen
		// and restart the game
		// Maybe this line below isn't needed, it just makes the player fly away or sm

		direction = point_direction(other.x, other.y, x, y);
		hsp = lengthdir_x(6, direction);
		vsp = lengthdir_y(4, direction) - 2;
		if(sign(hsp) != 0) image_xscale = sign(hsp);


	}
}