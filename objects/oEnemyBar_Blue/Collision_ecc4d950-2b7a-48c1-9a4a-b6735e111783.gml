
if(collision_detect_on == true){
	
	oVarGame.enemy_bar_destroyed_count++;
			oVarGame.gate_destroyed_type[type]++;
if(oVarGame.Enemy_Streak == BLUE){
		oVarGame.Enemy_Streak_Count++;
	}else{
		oVarGame.Enemy_Streak_Count = 1;
		oVarGame.Enemy_Streak = BLUE
	}
	
	if((oVarGame.enemy_bar_destroyed_count+1)%oVarGame.enemy_eliminate_count == 0)
	{
		oPlayer.image_index=1;
	}
	else
	{
		oPlayer.image_index=0;
	}
	
	if(oVarGame.enemy_bar_destroyed_count%oVarGame.enemy_eliminate_count == 0)
	{
		with(oEnemy_Follow)
		{
			instance_destroy();	
		}
		FxScreenShake(5,5,5);

	}else
	{
		FxScreenShake(5,5,5);
	}

	if(ds_map_exists(oVarGame.enemy_bar_to_edge_map,id))
	{
		instance_destroy(oVarGame.enemy_bar_to_edge_map[? id]);	
	}

	instance_destroy();

}