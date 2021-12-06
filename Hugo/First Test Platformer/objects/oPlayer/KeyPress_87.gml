/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29AA84F7
/// @DnDArgument : "var" "hh"
if(hh == 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5CAA5357
	/// @DnDParent : 29AA84F7
	/// @DnDArgument : "speed" "-6.5"
	/// @DnDArgument : "type" "2"
	vspeed = -6.5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 001FE0C6
	/// @DnDParent : 29AA84F7
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "hh"
	hh = 1;
}