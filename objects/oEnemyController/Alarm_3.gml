/// @description Missile

create_missile = true;
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

var type = oVarGame.Enemy_State;

var _enemy_missile = instance_create_layer(enemy_x,enemy_y,"sublayer_bar", oEnemy_Missile); 

_enemy_missile.type = type;

if(type == 1){
	_enemy_missile.sprite_index = sEnemy_Ball_Blue;
}
else if(type == 0)
{
	_enemy_missile.sprite_index = sEnemy_Ball_Green;
}

_enemy_missile.image_index = 0;
