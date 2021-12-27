/// @description Insert description here
// You can write your code in this editor
draw_self()

if(is_debug)
{
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
					break;
				}
			}
			
		}
		
		dir += (add_angle * rays) * angle_dir;
		angle_dir *=-1;
	}
}
