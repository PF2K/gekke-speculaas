/// @description Insert description here
// You can write your code in this editor
with o_character
	if place_meeting(x,y,o_blub){
		instance_destroy(o_character,true);
	}
	
	
if instance_exists(o_character)==false{
			game_restart();
}