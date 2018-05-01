/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7E596693
/// @DnDArgument : "code" "instance_create(x,y,oBomb_Collect);$(13_10)$(13_10)FxScreenShake(4,4,5);"
instance_create(x,y,oBomb_Collect);

FxScreenShake(4,4,5);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 402E208D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "color" "$FF2E16FF"
effect_create_below(3, x + 0, y + 0, 0, $FF2E16FF & $ffffff);