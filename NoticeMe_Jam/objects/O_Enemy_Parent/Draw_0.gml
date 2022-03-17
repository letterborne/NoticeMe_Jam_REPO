draw_self();

if(flash > 0)
{
	flash--;
	shader_set(Sh_White);
	draw_self();
	shader_reset(); 
}


