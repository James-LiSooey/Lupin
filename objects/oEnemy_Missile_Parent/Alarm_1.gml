/// @description Attack After Hitting Wall

if(instance_exists(oPlayer))
	{
		point_direction(x,y,oPlayer.x,oPlayer.y)
		motion_add(point_direction(x,y,oPlayer.x,oPlayer.y),oVarGame.enemy_missile_speed)
	}