/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 412B2025
draw_set_colour($FFFFFFFF & $ffffff);
var l412B2025_0=($FFFFFFFF >> 24);
draw_set_alpha(l412B2025_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7568C247
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "var" "string(will_dash)"
draw_text(x + 0, y + 0, string("Caption: ") + string(string(will_dash)));