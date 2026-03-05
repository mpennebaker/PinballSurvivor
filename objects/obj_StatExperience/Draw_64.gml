/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6C731892
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6B71317B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""XP: ""
/// @DnDArgument : "var" "string(currentValue) + " / " + string(targetValue)"
draw_text(x + 0, y + 0, string("XP: ") + string(string(currentValue) + " / " + string(targetValue)));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 78F48BC8
/// @DnDArgument : "var" "currentValue"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "targetValue"
if(currentValue >= targetValue){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1964F93E
	/// @DnDParent : 78F48BC8
	/// @DnDArgument : "expr" "-targetValue"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "currentValue"
	currentValue += -targetValue;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BB5D9FD
	/// @DnDParent : 78F48BC8
	/// @DnDArgument : "expr" "floor(targetValue*targetScale)"
	/// @DnDArgument : "var" "targetValue"
	targetValue = floor(targetValue*targetScale);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C84D100
	/// @DnDApplyTo : {obj_StatLevel}
	/// @DnDParent : 78F48BC8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "currentValue"
	with(obj_StatLevel) {
	currentValue += 1;
	
	}}