/// begin step is for when you want to let something happen before every event
// this code makes the flashlight follow whatever the character is doing

x = o_character.x+20;
y = o_character.y+5; // the plus makes the flash a little lower

// make the flash swap to left and right
image_angle = point_direction(x,y,mouse_x,mouse_y);



