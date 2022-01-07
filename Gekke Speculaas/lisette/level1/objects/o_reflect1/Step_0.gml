/// @description Insert description here
// You can write your code in this editor
// for the first reflection
image_index = 1

if (mouse_check_button(mb_left)){

	if (mouse_x >= 614 and mouse_x <= 639 and 
		mouse_y >= 799 and mouse_y<= 862)
		{image_index = 0}
		else {image_index = 1}
}