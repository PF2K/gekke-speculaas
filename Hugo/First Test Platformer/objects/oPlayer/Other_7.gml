/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F48B257
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "sRunning"
if(sprite_index == sRunning)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 470BF5BA
	/// @DnDParent : 2F48B257
	/// @DnDArgument : "spriteind" "sPlayer"
	/// @DnDSaveInfo : "spriteind" "sPlayer"
	sprite_index = sPlayer;
	image_index = 0;
}