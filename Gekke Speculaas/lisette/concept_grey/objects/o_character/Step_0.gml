/// @description step
// step event is specal event that happens every single frame of your game
// check to see if the player is pressing left right or space
// get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A")); // || means or
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//calculate movement
//key right and left are gonna be zero
var move = key_right - key_left; //for example 1 if right -1 if left, in this way when left and right at same time not posseble

hsp = move * walksp;

vsp = vsp + grv;

//jumping
//two conditions combined 
if (place_meeting(x,y+1,o_walls)) and (key_jump)
{
	vsp = -10;	
}

// horizontal collision
// while is loop over and over again untill not true
if (place_meeting(x+hsp,y,o_walls)) //place_meeting checks if there is a collision between two objects
{
	while (!place_meeting(x+sign(hsp),y,o_walls)) // ! is not
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

// vertical collision
if (place_meeting(x,y+vsp,o_walls)) //place_meeting checks if there is a collision between two objects
{
	while (!place_meeting(x,y+sign(vsp),o_walls)) // ! is not
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

// seperate section after movement 
// animation
if (!place_meeting(x,y+1,o_walls)) // to animate while jump
{
	sprite_index = 	s_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else //else for the running animation
{
	image_speed = 1;
	if (hsp == 0) // dubble is comparing, single is for setting stuf
	{
		sprite_index = s_character_still;	// here is the animation standing still
	}
	else
	{
		sprite_index = s_character // here is the animation running
	}
	
}

// facing the right direction 
if (hsp != 0) image_xscale = sign(hsp);
