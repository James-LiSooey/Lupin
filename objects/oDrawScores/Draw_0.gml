
var _button_Text = "High Scores";
var _button_x = 50;
var _button_y = 80;

draw_set_font(fBerlins_Sans_FB)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_halign(fa_left);

for(index = 0; index<ds_list_size(oSettings.list_high_scores); index++)
{
	_button_y += 70;
	var _button_Text1 = (string(index+1)) + ")  " + string(oSettings.list_high_scores[| index]);
	draw_text_transformed_colour(_button_x,_button_y,_button_Text1, 1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
}
