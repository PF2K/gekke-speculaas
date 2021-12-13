///This is the first script I'm trying in GS2 so wish me luck
///NineSliceBox (Sprite, x1, y1, x2, y2);
///
var _size = sprite_get_width(argument0) / 3;
var _x1 = argument1;
var _y1 = argument2;
var _x2 = argument3;
var _y2 = argument4;

var _w = _x2 - _x1;
var _h = _y2 - _y1;

var _columns = _w div _size;
var _rows = _h div _size;

//Corners
draw_sprite_part(argument0, 0, 0, _size, _size);
//Edges

//Center