if(done == 0)
{
	
	vsp = vsp + grv;



	//horizontal collision
	if(place_meeting(x + hsp, y, O_Wall))
	{
		while(!place_meeting(x + sign(hsp), y, O_Wall))
		{
			x = x + sign(hsp);
		}
	
		hsp = 0;
	}

	x = x + hsp;


	//vertical collision
	if(place_meeting(x, y + vsp, O_Wall))
	{
		if(vsp > 0)
		{
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x, y + sign(vsp), O_Wall))
		{
			y = y + sign(vsp);
		}
	
		vsp = 0;
	}

	y = y + vsp;

}