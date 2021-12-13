/// @description light bulbs
// check if surface exists
if(surface_exists(lighting_surface) == false) {
	lighting_surface = surface_create(room_width,room_height) //surface over the whole room
}

surface_set_target(lighting_surface); 

draw_clear_alpha(c_black,0.20); // draw a clear alpha over the screen with opacity of 0.50

with(o_light_bulb){
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,image_yscale, 0, c_white, 1);
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,image_yscale, 0, color, intensity);
	
	gpu_set_blendmode(bm_normal);
}

surface_reset_target();

draw_surface(lighting_surface, 0, 0); // draw the surface in the room from the left top to the right bottom
