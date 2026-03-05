/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0CD06A63
/// @DnDApplyTo : other
/// @DnDArgument : "var" "phy_active"
/// @DnDArgument : "value" "1"
with(other) var l0CD06A63_0 = phy_active == 1;
if(l0CD06A63_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05C2D5B5
	/// @DnDApplyTo : other
	/// @DnDParent : 0CD06A63
	/// @DnDArgument : "expr" "-3"
	/// @DnDArgument : "var" "enemyHealth"
	with(other) {
	enemyHealth -= 3;

	}}