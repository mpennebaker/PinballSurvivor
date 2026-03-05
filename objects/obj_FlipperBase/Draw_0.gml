/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 59C512B1
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3E82199B
/// @DnDArgument : "x" "-150"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-100"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""rot: ""
/// @DnDArgument : "var" "string(startingRotation) + " : " + string(phy_rotation) + " : "  + string(targetRotation) + " : " + string(targetRotation-phy_rotation)"
draw_text(x + -150, y + -100, string("rot: ") + string(string(startingRotation) + " : " + string(phy_rotation) + " : "  + string(targetRotation) + " : " + string(targetRotation-phy_rotation)));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 10461870
/// @DnDArgument : "x" "-150"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-75"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "phy_angular_velocity"
/// @DnDArgument : "var" "string(flipped) + " : " + string(mouse_check_button(inputButton))"
draw_text(x + -150, y + -75, string(phy_angular_velocity) + string(string(flipped) + " : " + string(mouse_check_button(inputButton))));

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4D084867
/// @DnDArgument : "button" "inputButton"
var l4D084867_0;l4D084867_0 = mouse_check_button(inputButton);if (l4D084867_0){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 24674BCA
	/// @DnDBreak : 1

	/// @DnDParent : 4D084867
	/// @DnDArgument : "expr" "flipped"
	if(flipped){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71D860A1
		/// @DnDInput : 2
		/// @DnDParent : 24674BCA
		/// @DnDArgument : "expr" "startingRotation + targetRotation"
		/// @DnDArgument : "var" "phy_rotation"
		/// @DnDArgument : "var_1" "phy_angular_velocity"
		phy_rotation = startingRotation + targetRotation;
		phy_angular_velocity = 0;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 081F06B6
	/// @DnDParent : 4D084867
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69736C45
		/// @DnDParent : 081F06B6
		/// @DnDArgument : "expr" "flipperRotationSpeed"
		/// @DnDArgument : "var" "phy_angular_velocity"
		phy_angular_velocity = flipperRotationSpeed;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2EFF600B
		/// @DnDParent : 081F06B6
		/// @DnDArgument : "expr" "abs((phy_rotation) - (startingRotation)) > targetRotation"
		if(abs((phy_rotation) - (startingRotation)) > targetRotation){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5E7559E3
			/// @DnDParent : 2EFF600B
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "flipped"
			flipped = 1;}}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 51AAF09F
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39A7DA14
	/// @DnDInput : 3
	/// @DnDParent : 51AAF09F
	/// @DnDArgument : "expr_1" "startingRotation"
	/// @DnDArgument : "var" "phy_angular_velocity"
	/// @DnDArgument : "var_1" "phy_rotation"
	/// @DnDArgument : "var_2" "flipped"
	phy_angular_velocity = 0;
	phy_rotation = startingRotation;
	flipped = 0;}