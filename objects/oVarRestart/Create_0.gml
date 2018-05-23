#macro RESTARTBUTTON oStart_Button

//menu button details;
start_button_xscale = 9;
start_button_yscale = 2;
#macro RESTARTBUTTONXSCALE oVarRestart.start_button_xscale
#macro RESTARTBUTTONYSCALE oVarRestart.start_button_yscale


start_button_width = 64*start_button_xscale;
start_button_height = 64*start_button_yscale;

start_button_gap = start_button_height *1.5;

button_x_init =  room_width/2;
button_y_init = room_height/2;

//list of buttons
list_restart_buttons = ds_list_create();
ds_list_add(list_restart_buttons,"Play Again");
ds_list_add(list_restart_buttons,"Start Menu");
ds_list_add(list_restart_buttons,"Exit");

//ds_map for button objects
//key = button text
map_restart_menu_object = ds_map_create();
ds_map_add(map_restart_menu_object, "Play Again", oRestart_Button);
ds_map_add(map_restart_menu_object, "Start Menu", oStart_Menu_Button);
ds_map_add(map_restart_menu_object, "Exit", oRestart_Exit_Button);

#macro RestartMenuButtons oVarRestart.map_restart_menu_object
instance_create_layer(0,0,"layer_gui",oRestartController);