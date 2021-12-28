//add gravity
vsp = vsp + grv;

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


// facing the right direction 
if (hsp != 0) image_xscale = sign(hsp);


// making the npc walk or move

//see_player = false; // otherwise the player is always seen

var add_angle = 5;
var angle_dir = 1;
var dir = image_angle;
	
for(var rays = 0; rays <= ray_count; rays ++){
	for(var line_lenght = 0; line_lenght < ray_length; line_lenght++){
		var xx = x + lengthdir_x(line_lenght, dir);
		var yy = y + lengthdir_y(line_lenght, dir);
			
		if(position_empty(xx,yy == false)){
				
			if(instance_place(xx,yy,o_walls) != noone){
				break;
			}
			if(instance_place(xx,yy,o_character) != noone){
				see_player = true;
				target = instance_place(xx,yy,o_character);
				break;
			}
		}
	}
		
	dir += (add_angle * rays) * angle_dir;
	angle_dir *=-1;
}

if instance_exists(o_character)
{
	if(target){
	point_direction(x,y,target.x, target.y);
	move_towards_point(target.x,target.y,3)
	}
}


with o_character
	if place_meeting(x,y,o_bunny){
		instance_destroy(o_character,true);
		instance_destroy(o_flash_light,true);
		if instance_exists(o_character)==false{
			game_restart();
		}
	}
	
	
if (mouse_check_button(mb_left)){

	if (mouse_x >= 614 and mouse_x <= 639 and 
		mouse_y >= 799 and mouse_y<= 862)
		mp_potential_step_object(2115,970,2,o_bunny)
}