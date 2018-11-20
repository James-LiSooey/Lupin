/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E84A0FA
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 59AA6691
/// @DnDArgument : "x" "oPlayer.sprite_width/2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-oPlayer.sprite_height/2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF000000"
effect_create_below(3, x + oPlayer.sprite_width/2, y + -oPlayer.sprite_height/2, 1, $FF000000 & $ffffff);