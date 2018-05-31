
var _button_Text = "High Scores";
var _button_x = room_width/2;
var _button_y = 200;

draw_set_font(fComic_Sans)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_colour(_button_x,_button_y,_button_Text, 3, 3, image_angle, c_white, c_white, c_white, c_white, 1);

var _button_x = room_width/4;
_button_y += 80;
draw_set_halign(fa_left);

for(index = 0; index<ds_list_size(oSettings.list_high_scores); index++)
{
	_button_y += 120;
	var _button_Text1 = (string(index+1)) + ")    " + string(oSettings.list_high_scores[| index]);
	draw_text_transformed_colour(_button_x,_button_y,_button_Text1, 3, 3, image_angle, c_white, c_white, c_white, c_white, 1);
}
