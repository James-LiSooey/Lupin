
//var _enemy_type = irandom(oVarGame.enemy_randomize);

/*if(create_gate){
	alarm[0] = oVarGame.gate_spawn_rate*(oVarGame.game_fps/60);
	create_gate = false;
}*/

/*
if(create_missile){
	create_missile = false;
	alarm[3] = oVarGame.missile_spawn_rate*(60/oVarGame.game_fps);
}
*/


/// Missile Spawn

spawn_missile_counter+=1*(oVarGame.game_fps/60);

if(spawn_missile_counter>oVarGame.missile_spawn_rate){
	
spawn_missile_counter=0;
//create_missile = true;

randomize();
var enemy_x = irandom_range(0,room_width);
var enemy_y = irandom_range(0,room_height); 

with(oPlayer)
{
	while(distance_to_point(enemy_x,enemy_y)<100)
	{
		var enemy_x = irandom_range(0,room_width);
		var enemy_y = irandom_range(0,room_height); 
	}
}

var type = oVarGame.Enemy_State;

var _enemy_missile = instance_create_layer(enemy_x,enemy_y,"layer_enemies", oEnemy_Missile); 

_enemy_missile.type = type;

if(type == 1){
	_enemy_missile.sprite_index = sGame_Enemy_Green;
}
else if(type == 0)
{
	_enemy_missile.sprite_index = sGame_Enemy_Purple;
}

_enemy_missile.image_index = 0;

}
