/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E92120E
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "adventurer_die"
if(!(sprite_index == adventurer_die))
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0420109E
	/// @DnDParent : 5E92120E
	draw_set_colour($FFFFFFFF & $ffffff);
	var l0420109E_0=($FFFFFFFF >> 24);
	draw_set_alpha(l0420109E_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 77859A4E
	/// @DnDParent : 5E92120E
	/// @DnDArgument : "x" "15"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "15"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "var" "shadow_x"
	draw_text(x + 15, y + 15, string("Caption: ") + string(shadow_x));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 202026CA
	/// @DnDParent : 5E92120E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height-40"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "player_hp"
	draw_text_transformed(x + 0, y + -sprite_height-40, "" + string(player_hp), 2, 2, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 0EE72971
	/// @DnDParent : 5E92120E
	/// @DnDArgument : "x" "0-50"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1.5"
	/// @DnDArgument : "yscale" "1.5"
	/// @DnDArgument : "caption" ""Zwiiiip""
	draw_text_transformed(x + 0-50, y + -sprite_height, string("Zwiiiip") + "", 1.5, 1.5, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D5DCB9B
	/// @DnDParent : 5E92120E
	/// @DnDArgument : "var" "player_dash_cd "
	/// @DnDArgument : "op" "2"
	if(player_dash_cd  > 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71FC061E
		/// @DnDParent : 5D5DCB9B
		/// @DnDArgument : "var" "player_dash_distance"
		/// @DnDArgument : "op" "3"
		if(player_dash_distance <= 0)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
			/// @DnDVersion : 1
			/// @DnDHash : 5A8E8EA5
			/// @DnDParent : 71FC061E
			/// @DnDArgument : "x1" "-80*player_dash_cd/100"
			/// @DnDArgument : "x1_relative" "1"
			/// @DnDArgument : "y1_relative" "1"
			/// @DnDArgument : "x2" "80*player_dash_cd/100"
			/// @DnDArgument : "x2_relative" "1"
			/// @DnDArgument : "y2" "10"
			/// @DnDArgument : "y2_relative" "1"
			/// @DnDArgument : "fill" "1"
			draw_rectangle(x + -80*player_dash_cd/100, y + 0, x + 80*player_dash_cd/100, y + 10, 0);
		}
	}
}