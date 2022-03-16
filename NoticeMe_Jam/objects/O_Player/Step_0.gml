


#region //get player input

if(hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
	
	key_jump = keyboard_check_pressed(vk_space);
	
	//key_activate = keyboard_check_pressed(vk_space);
	//key_attack = keyboard_check_pressed(vk_shift);
	//key_item = keyboard_check_pressed(vk_control);

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
}
else 
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}


#endregion



inputDirection = point_direction(0, 0, key_right - key_left, key_down - key_up);
inputMagnitude = (key_right - key_left != 0) or (key_down - key_up != 0);

//calculate movement
hsp = lengthdir_x(inputMagnitude * walksp, inputDirection);
vsp = lengthdir_y(inputMagnitude * walksp, inputDirection);

//Collisions

if place_meeting(x + hsp, y, O_Wall) == true
{
	hsp = 0;
}
if place_meeting(x, y + vsp, O_Wall) == true
{
	vsp = 0;
}

x += hsp;
y += vsp;


//Set sprite

if vsp == 0 
{
	if hsp > 0 {face = RIGHT};
	if hsp < 0 {face = LEFT};
}
if hsp > 0 && face == LEFT {face = RIGHT};
if hsp < 0 && face == RIGHT {face = LEFT};

if hsp == 0
{
	if vsp > 0 {face = DOWN};
	if vsp < 0 {face = UP};
}
if vsp > 0 && face == UP {face = DOWN};
if vsp < 0 && face == DOWN {face = UP};

sprite_index = sprite[face];
