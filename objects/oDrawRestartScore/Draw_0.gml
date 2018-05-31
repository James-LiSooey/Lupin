
var _button_Text = "Score";
var _button_x = room_width/4;
var _button_y = 300;

draw_set_font(fComic_Sans)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_colour(_button_x,_button_y,_button_Text, 3, 3, image_angle, c_white, c_white, c_white, c_white, 1);

_button_Text = oSettings.most_recent_score;
_button_y += 200;

draw_text_transformed_colour(_button_x,_button_y,_button_Text, 3, 3, image_angle, c_white, c_white, c_white, c_white, 1);

_button_x*=3;
_button_y = 300;
_button_Text = "High Score";

draw_text_transformed_colour(_button_x,_button_y,_button_Text, 3, 3, image_angle, c_white, c_white, c_white, c_white, 1);

_button_y += 200;
get_high_scores();
_button_Text = oSettings.list_high_scores[| 0];

draw_text_transformed_colour(_button_x,_button_y,_button_Text, 3, 3, image_angle, c_white, c_white, c_white, c_white, 1);

