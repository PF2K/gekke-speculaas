/// @description light bulbs
// check if surface exists
if(surface_exists(lighting_surface) == false) {
	lighting_surface = surface_create(room_width,room_height)	
}

surface_set_target(lighting_surface);

draw_clear_alpha(c_black,0.75);

with(o_light_bulb){
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,image_yscale, 0, c_white, 1);
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,image_yscale, 0, color, intensity);
	
	gpu_set_blendmode(bm_normal);
}

surface_reset_target();

draw_surface(lighting_surface, 0, 0);
