/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 33BD2432
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 75FC4857
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 3AFF4ABF
var l3AFF4ABF_0;
l3AFF4ABF_0 = mouse_check_button(mb_left);
if (l3AFF4ABF_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 409C5BA8
	/// @DnDParent : 3AFF4ABF
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7F32AEDB
		/// @DnDParent : 409C5BA8
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "oBullet"
		/// @DnDSaveInfo : "objectid" "oBullet"
		instance_create_layer(x + 0, y + 0, "Instances", oBullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 646B1BDE
		/// @DnDParent : 409C5BA8
		/// @DnDArgument : "expr" "30"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 30;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7627E3CC
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 56C48B8F
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "recoil"
recoil = 4;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66FF9EB3
/// @DnDArgument : "code" "x = x-lengthdir_x(recoil,image_angle);$(13_10)y = y-lengthdir_y(recoil,image_angle);"
x = x-lengthdir_x(recoil,image_angle);
y = y-lengthdir_y(recoil,image_angle);