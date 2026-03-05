/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4025DCDE
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 75318C55
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "var" "phy_active"
draw_text(x + 0, y + 0, string("Caption: ") + string(phy_active));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05FE1188
/// @DnDArgument : "var" "enemyHealth"
/// @DnDArgument : "op" "3"
if(enemyHealth <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2364DF69
	/// @DnDApplyTo : {obj_StatExperience}
	/// @DnDParent : 05FE1188
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "currentValue"
	with(obj_StatExperience) {
	currentValue += other.xpValue;

	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C092287
	/// @DnDParent : 05FE1188
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1E1EAA81
/// @DnDArgument : "expr" "fadeComplete"
/// @DnDArgument : "not" "1"
if(!(fadeComplete)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14F155D4
	/// @DnDParent : 1E1EAA81
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "fadeInAlpha"
	fadeInAlpha += 1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 277277CC
	/// @DnDParent : 1E1EAA81
	/// @DnDArgument : "alpha" "fadeInAlpha/100"
	image_alpha = fadeInAlpha/100;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77706F24
	/// @DnDParent : 1E1EAA81
	/// @DnDArgument : "var" "fadeInAlpha"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	if(fadeInAlpha >= 100){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29506FAB
		/// @DnDParent : 77706F24
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "fadeComplete"
		fadeComplete = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69ECCAA2
		/// @DnDParent : 77706F24
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "phy_active"
		phy_active = 1;}}