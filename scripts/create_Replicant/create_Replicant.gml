var _xRange_Min = argument0;
var _xRange_Max = argument1;
var _yRange_Min = argument2;
var _yRange_Max = argument3;
var _dist_to_player = argument4;
var _angle;
var _enemy_x;
var _enemy_y;
var _rotate_speed;

randomize();
_enemy_x = irandom_range(xRange_Min,xRange_Max);
_enemy_y = irandom_range(yRange_Min,yRange_Max); 

with(oPlayer)
{
	while(distance_to_point(_enemy_x,_enemy_y)<_dist_to_player)
	{
		_enemy_x = irandom_range(xRange_Min,xRange_Max);
		_enemy_y = irandom_range(yRange_Min,yRange_Max); 
	}
}

_angle = irandom_range(0,3);
_angle = _angle*45;
_rotate_speed = irandom_range(-1,1);

if(_rotate_speed == 0)
{
	_rotate_speed = irandom_range(0,1);
	_rotate_speed = (_rotate_speed*2)-1;	
}

var enemy_bar_inst = instance_create_layer(_enemy_x,_enemy_y,"sublayer_bar", oEnemyBar); 
var enemy_edge_inst = instance_create_layer(_enemy_x,_enemy_y,"sublayer_edge", oEnemyEdge); 

enemy_bar_inst.image_angle = angle;
enemy_bar_inst.image_index = 0;
enemy_bar_inst.rotation_speed = rotate_speed/3;

ds_map_add(oVarGame.enemy_bar_to_edge_map,enemy_bar_inst,enemy_edge_inst);
ds_map_add(oVarGame.enemy_edge_to_bar_map,enemy_edge_inst,enemy_bar_inst);


