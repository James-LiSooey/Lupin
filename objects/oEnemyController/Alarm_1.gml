/// @description Follow

create_enemy_follow = true;
randomize();
var enemy_x = irandom_range(100,room_width);
var enemy_y = irandom_range(100,room_height-oVarGame.height_buffer); 

with(oPlayer)
{
	while(distance_to_point(enemy_x,enemy_y)<500)
	{
		var enemy_x = irandom_range(100,room_width);
		var enemy_y = irandom_range(100,room_height-oVarGame.height_buffer); 
	}
}

var enemy_follow_inst = instance_create_layer(enemy_x,enemy_y,"layer_enemies", oEnemy_Follow); 