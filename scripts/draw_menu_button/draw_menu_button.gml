var _button_Text = argument0;
var _button_x = argument1;
var _button_y = argument2;

draw_set_font(fComic_Sans)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_colour(_button_x,_button_y,_button_Text, 3, 3, image_angle, c_white, c_white, c_white, c_white, 1);