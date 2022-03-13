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
	while(!place_meeting(x, y + sign(vsp), O_Wall))
	{
		y = y + sign(vsp);
	}
	
	vsp = 0;
}

y = y + vsp;



//Animation
if(!place_meeting(x, y+1, O_Wall))
{
	//sprite_index = (Name of the jump sprite)
	//image_speed = 0;
	//if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	//
	
} 
else 
{
	image_speed = 1;
	if(hsp == 0) 
	{
		sprite_index = S_EnemyR; //use an enemy idle here later
		
	}
	else 
	{
		sprite_index = S_EnemyR;
		
	}
}

if(hsp != 0)
{
	image_xscale = sign(hsp);
}