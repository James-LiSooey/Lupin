if(instance_exists(oPlayer))
{
	if(distance_to_object(oPlayer)<80)
	{
		player_collect = true;
	}

	if(player_collect)
	{
		if(distance_to_object(oPlayer)<16)
		{
			move_towards_point(oPlayer.x,oPlayer.y,(distance_to_object(oPlayer)+2)*2);
		}
		else
		{
			move_towards_point(oPlayer.x,oPlayer.y,32);
		}
	}
}