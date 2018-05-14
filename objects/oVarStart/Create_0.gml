#macro STARTBUTTON oStart_Button

//menu button details;
start_button_xscale = 9;
start_button_yscale = 2;
#macro BUTTONXSCALE oVarStart.start_button_xscale
#macro BUTTONYSCALE oVarStart.start_button_yscale


start_button_width = 64*start_button_xscale;
start_button_height = 64*start_button_yscale;

start_button_gap = start_button_height *1.5;

button_x_init =  room_width/2;
button_y_init = room_height/2;

//list of buttons
list_start_buttons = ds_list_create();
ds_list_add(list_start_buttons,"Play");
ds_list_add(list_start_buttons,"Options");
ds_list_add(list_start_buttons,"High Score");
ds_list_add(list_start_buttons,"Exit");

//ds_map for button objects
//key = button text
map_start_menu_object = ds_map_create();
ds_map_add(map_start_menu_object, "Play", oStart_Button);
ds_map_add(map_start_menu_object, "Options", oOptions_Button);
ds_map_add(map_start_menu_object, "High Score", oHighScore_Button);
ds_map_add(map_start_menu_object, "Exit", oExit_Button);

#macro StartMenuButtons oVarStart.map_start_menu_object
instance_create_layer(0,0,"layer_gui",oStartController);