var _button_list = oVarRestart.list_restart_buttons;
var _button_x = oVarRestart.button_x_init;
var _button_y = oVarRestart.button_y_init;

for(counter = 0; counter<ds_list_size(_button_list);counter++)
{
	var _button_text = _button_list[| counter];
	_button_y += oVarRestart.start_button_gap;
	
	instance_create_layer(_button_x,_button_y,"layer_gui", RestartMenuButtons[? _button_text]);
}