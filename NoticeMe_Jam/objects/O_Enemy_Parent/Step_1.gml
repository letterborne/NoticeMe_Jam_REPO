if(hp <= 0) 
{
	with(instance_create_layer(x, y, layer, O_DeadEnemy))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction) - 2;
		image_xscale = sign(hsp);
	}
	
	with(O_Player)
	{
		highscore += 10;
		show_debug_message(highscore);
	}
	
	instance_destroy();
}