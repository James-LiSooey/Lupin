/// @description Skewer

create_enemy = true;
randomize();
var enemy_x = irandom_range(100,room_width);
var enemy_y = irandom_range(100,room_height-oVarGame.height_buffer); 

with(oPlayer)
{
	while(distance_to_point(enemy_x,enemy_y)<400)
	{
		var enemy_x = irandom_range(100,room_width);
		var enemy_y = irandom_range(100,room_height-oVarGame.height_buffer); 
	}
}

var type = irandom_range(0,3);
var angle = type*45;
var rotate_speed = irandom_range(-1,1);
if(rotate_speed == 0)
{
	rotate_speed = irandom_range(0,1);
	rotate_speed = (rotate_speed*2)-1;	
}

var _enemy_skewer_center = instance_create_layer(enemy_x,enemy_y,"sublayer_bar", oEnemy_Skewer); 
var _enemy_skewer_edge = instance_create_layer(enemy_x,enemy_y,"sublayer_edge", oEnemy_Skewer_Edge); 

_enemy_skewer_center.image_angle = angle;
_enemy_skewer_center.image_index = 0;
_enemy_skewer_center.rotation_speed = 4;

_enemy_skewer_edge.image_angle = angle;
_enemy_skewer_edge.image_index = 0;
_enemy_skewer_edge.rotation_speed = 4;

ds_map_add(oVarGame.enemy_skewer_center_edge_map,_enemy_skewer_center,_enemy_skewer_edge);
ds_map_add(oVarGame.enemy_skewer_edge_center_map,_enemy_skewer_edge,_enemy_skewer_center);
