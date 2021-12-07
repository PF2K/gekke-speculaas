// update camara
// to make the camera follow the player

// update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;	
}

// update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;


// in case you dont want the camera to go further then the walls
// x = clamp(x,view_w_half,room_width-view_w_half);
// y = clamp(y,view_h_half,room_height-view_h_half);
 
// update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

