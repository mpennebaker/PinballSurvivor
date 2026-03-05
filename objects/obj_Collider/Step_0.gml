/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 60A59F9E
/// @DnDArgument : "x1" "-20"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-20"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "20"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "20"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "target" "hitList"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "obj" "obj_MainBall"
/// @DnDArgument : "shape" "1"
/// @DnDArgument : "aslist" "1"
/// @DnDSaveInfo : "obj" "obj_MainBall"
var l60A59F9E_0 = ds_list_create();
var l60A59F9E_1 = collision_rectangle_list(x + -20, y + -20, x + 20, y + 20, [obj_MainBall], true, 1, l60A59F9E_0, true);
var hitList = l60A59F9E_0;if((l60A59F9E_1 > 0)){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6998C1EE
	/// @DnDParent : 60A59F9E
	/// @DnDArgument : "var" "innerBounce"
	/// @DnDArgument : "value" "bouncePower"
	var innerBounce = bouncePower;

	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 389D3ECE
	/// @DnDParent : 60A59F9E
	/// @DnDArgument : "assignee" "num"
	/// @DnDArgument : "var" "hitList"
	num = ds_list_size(hitList);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 333F773A
	/// @DnDParent : 60A59F9E
	/// @DnDArgument : "cond" "i < num"
	for(i = 0; i < num; i += 1) {	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 333D702E
		/// @DnDParent : 333F773A
		/// @DnDArgument : "assignee" "listItem"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "hitList"
		/// @DnDArgument : "index" "i"
		var listItem = ds_list_find_value(hitList, i);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 2AF2D466
		/// @DnDApplyTo : listItem
		/// @DnDParent : 333F773A
		with(listItem) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 419B72A9
			/// @DnDParent : 2AF2D466
			/// @DnDArgument : "expr" "-1*phy_linear_velocity_y * innerBounce"
			/// @DnDArgument : "var" "phy_linear_velocity_y"
			phy_linear_velocity_y = -1*phy_linear_velocity_y * innerBounce;
		}}}

/// @DnDAction : YoYo Games.Data Structures.DS_Free
/// @DnDVersion : 1
/// @DnDHash : 27EE89B8
/// @DnDArgument : "var" "hitList"
ds_list_destroy(hitList);