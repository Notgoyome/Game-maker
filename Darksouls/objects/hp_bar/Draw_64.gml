/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 020A7264
/// @DnDArgument : "color" "$FF00009B"
draw_set_colour($FF00009B & $ffffff);
var l020A7264_0=($FF00009B >> 24);
draw_set_alpha(l020A7264_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 536E4B80
/// @DnDArgument : "x1" "40"
/// @DnDArgument : "y1" "room_height-30"
/// @DnDArgument : "x2" "(room_width-40)*(hp/hp_max)"
/// @DnDArgument : "y2" "room_height-20"
/// @DnDArgument : "fill" "1"
draw_rectangle(40, room_height-30, (room_width-40)*(hp/hp_max), room_height-20, 0);