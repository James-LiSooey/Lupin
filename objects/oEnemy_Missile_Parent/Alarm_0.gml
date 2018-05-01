/// @description Image Alpha/Hit Detection

if(image_alpha<1)
{
	image_alpha = 1;
	alarm0 = true;
	collision_detect_on = true;	
	if(instance_exists(oPlayer))
	{
		point_direction(x,y,oPlayer.x,oPlayer.y)
		motion_add(point_direction(x,y,oPlayer.x,oPlayer.y),oVarGame.enemy_missile_speed)
	}
}else{
	collision_detect_on = true;	
}
