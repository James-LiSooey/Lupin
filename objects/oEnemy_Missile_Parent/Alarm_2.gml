/// @description Attack After Hitting Wall

image_speed = 0;
image_index = 0;
if(instance_exists(oPlayer))
	{
		point_direction(x,y,oPlayer.x,oPlayer.y)
		motion_add(point_direction(x,y,oPlayer.x,oPlayer.y),oVarGame.enemy_missile_speed*(oVarGame.game_fps/60))
	}
