/// @Global Game Variables

#macro GREEN 0
#macro BLUE 1

//Input Queue Instantiate
input_Queue = ds_queue_create();

//create game controller
instance_create_layer(0,0,"layer_controller",oGameController);

//Room variables
height_buffer= 700;

//player variables
player_speed = 20;

//Enemy Controller Variables
next_enemy_spawn_time = 35;
gate_spawn_rate = 60/2;
missile_spawn_rate = 60/.5;

enemy_randomize = 100;
enemy_skewer_spawn_rate = 20;
enemy_missile_spawn_rate = 30;

enemy_missile_speed = 25;

//hashmap for enemy bars and edges
enemy_bar_to_edge_map = ds_map_create();
enemy_edge_to_bar_map = ds_map_create();

enemy_skewer_center_edge_map = ds_map_create();
enemy_skewer_edge_center_map = ds_map_create();

//enemy_follow variables
enemy_follow_speed = 6;

//round stat tracking
enemy_bar_destroyed_count = 0;
enemy_eliminate_count = 4;

gate_destroyed_type[1] = 0;
gate_destroyed_type[0] = 0;

bomb_current_count = 0;
bomb_powerup_amount = 8;
bomb_count = 1;

//Game State
Enemy_State = BLUE;
Enemy_Streak = BLUE;
Enemy_Streak_Count = 0;
Enemy_Clear = 0;
Clear_Type = -1;
