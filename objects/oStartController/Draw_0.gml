var _button_list = oVarStart.list_start_buttons;
var _button_x = oVarStart.button_x_init;
var _button_y = oVarStart.button_x_init;
	
for(counter = 0; counter<ds_list_size(_button_list);counter++)
{
	var _button_text = _button_list[| counter];
	_button_y += oVarStart.start_button_gap;
	
	draw_menu_button(_button_text, _button_x, _button_y);
}
