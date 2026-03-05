/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B576D69
/// @DnDArgument : "code" "var enemy_pool = [obj_EnemyGreen, obj_EnemyYellow];$(13_10)var chosen = enemy_pool[irandom(array_length(enemy_pool) - 1)];$(13_10)instance_create_layer(x + random_range(-200, 200), y + random_range(-200, 200), "Instances", chosen);$(13_10)$(13_10)alarm_set(0, room_speed * 5);$(13_10)"
var enemy_pool = [obj_EnemyGreen, obj_EnemyYellow];
var chosen = enemy_pool[irandom(array_length(enemy_pool) - 1)];
instance_create_layer(x + random_range(-200, 200), y + random_range(-200, 200), "Instances", chosen);

alarm_set(0, room_speed * 5);