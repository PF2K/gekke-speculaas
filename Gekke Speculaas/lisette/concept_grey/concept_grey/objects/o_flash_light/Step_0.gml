/// begin step is for when you want to let something happen before every event
// this code makes the flashlight follow whatever the character is doing
if instance_exists(o_character){
	x = o_character.x+60;
	y = o_character.y+6; // the plus makes the flash a little lower
}

	// make the flash swap to left and right
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	
if (place_meeting(647,838,o_flash_light)){
	draw_sprite(s_flash_reflect,0,647,828)
}