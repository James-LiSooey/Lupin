var _button_list = oVarStart.list_start_buttons;
var _button_x = oVarStart.button_x_init;
var _button_y = oVarStart.button_y_init;

for(counter = 0; counter<ds_list_size(_button_list);counter++)
{
	var _button_text = _button_list[| counter];
	_button_y += oVarStart.start_button_gap;
	
	instance_create_layer(_button_x,_button_y, "layer_gui", StartMenuButtons[? _button_text]);
}