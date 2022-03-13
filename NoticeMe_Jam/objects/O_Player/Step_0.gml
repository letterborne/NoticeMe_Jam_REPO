//get player input
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

if(key_left) or (key_right) or (key_jump)
{
	controller = 0;
}

if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
{
	key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_right = max(gamepad_axis_value(0, gp_axislh), 0);
	controller = 1;
	
}

if(gamepad_button_check_pressed(0, gp_face1))
{
	key_jump = 1;
	controller = 1;
}

//calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x, y + 1, O_Wall)) && (key_jump)
{
	vsp = -7;
	
}

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
		sprite_index = S_Player;
		
	}
	else 
	{
		sprite_index = S_PlayerR;
		
	}
}

if(hsp != 0)
{
	image_xscale = sign(hsp);
}