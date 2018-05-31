/// @description Gate
var enemy_bar_inst;

create_gate = true;

randomize();
var enemy_x = irandom_range(100,room_width);
var enemy_y = irandom_range(100,room_height-oVarGame.height_buffer); 

with(oPlayer)
{
	while(distance_to_point(enemy_x,enemy_y)<80)
	{
		var enemy_x = irandom_range(100,room_width);
		var enemy_y = irandom_range(100,room_height-oVarGame.height_buffer); 
	}
}

var type = irandom_range(0,100);
var angle = type*45;
var rotate_speed = irandom_range(-1,1);
if(rotate_speed == 0)
{
	rotate_speed = irandom_range(0,1);
	rotate_speed = (rotate_speed*2)-1;	
}

if(type <50){
	enemy_bar_inst = instance_create_layer(enemy_x,enemy_y,"sublayer_bar", oEnemyBar_Green); 
	type = 0;
}
else if(type >=50)
{
	enemy_bar_inst = instance_create_layer(enemy_x,enemy_y,"sublayer_bar", oEnemyBar_Blue); 
	type =1;
}

var enemy_edge_inst = instance_create_layer(enemy_x,enemy_y,"sublayer_edge", oEnemyEdge); 

enemy_bar_inst.image_angle = angle;
enemy_bar_inst.image_index = 0;
enemy_bar_inst.rotation_speed = rotate_speed/3;
enemy_bar_inst.type = type;

enemy_edge_inst.image_angle = angle;
enemy_edge_inst.rotation_speed = rotate_speed/3;
enemy_edge_inst.type = type;

ds_map_add(oVarGame.enemy_bar_to_edge_map,enemy_bar_inst,enemy_edge_inst);
ds_map_add(oVarGame.enemy_edge_to_bar_map,enemy_edge_inst,enemy_bar_inst);


