/// @description draw
if (surface_exists(o_surface))
{
	surface_set_target(o_surface.surf_flash);
	
	//clean surface
	draw_clear_alpha(c_black,0);
	
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_color(c_white);
	
	gpu_set_blendmode(bm_subtract);
	draw_circle(x,y,50,false);
	gpu_set_blendmode(bm_normal)
	
	
	surface_reset_target();
}

draw_self();

