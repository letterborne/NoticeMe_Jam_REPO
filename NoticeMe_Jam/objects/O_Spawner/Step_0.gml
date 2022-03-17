if(triggered)
{
	//Check the lsit for enemies that are ready to spawn and stuff
	for(var i = 0; i < ds_list_size(waves); i++)
	{
		var next = ds_list_find_value(waves, i);
		if(next[_WAVE] == current_wave) && (next[_DELAY] == timer)
		{
			var spawnpoint = next[_SPAWN];
			instance_create_layer(spawn[spawnpoint, 0], spawn[spawnpoint, 1], "Enemy", next[_TYPE]);
		}
	}
	
	//Increase timer
	timer++;
	
	if(remaining[current_wave] <= 0) 
	{
		if(current_wave == total_waves)
		{
			instance_destroy();
		}
		else
		{
			current_wave++;
			timer = 0;
		}
	}
}