/// @description Insert description here
// You can write your code in this editor

instance_create_layer(room_width/2,room_height/2,"layer_player",oPlayer);

instance_create_layer(0,0,"layer_controller",oInputControllerSwipe);
instance_create_layer(0,0,"layer_controller",oEnemyController);
instance_create_layer(0,0,"layer_gui",oGUI);

