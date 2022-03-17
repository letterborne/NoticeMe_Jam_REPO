


#region //get player input

if(hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
	
	key_jump = keyboard_check_pressed(vk_space);
	
	key_activate = keyboard_check_pressed(vk_space);
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




//calculate movement
hsp = (key_right - key_left) * walksp;
vsp = (key_down - key_up) * walksp;

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


if(key_activate) // I'm trying something, but it's probably a baaad idea cuz I dunno what I'm doing
{
	show_debug_message("Debugging");
	var _activateX = lengthdir_x(10, direction);
	var _activateY = lengthdir_y(10, direction);
	activate = instance_position(x + _activateX, y + _activateY, P_Entity);
	
	if (activate == noone or activate.entityActivateScript == -1)
	{
		//do nothing?
	}
	else 
	{
		//Activate the entity 
		ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
	}
}


