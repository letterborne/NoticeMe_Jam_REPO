if(hp <= 0) 
{
	with(instance_create_layer(x, y, layer, O_DeadEnemy))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction) - 2;
		image_xscale = sign(hsp);
	}
	
	instance_destroy();
}