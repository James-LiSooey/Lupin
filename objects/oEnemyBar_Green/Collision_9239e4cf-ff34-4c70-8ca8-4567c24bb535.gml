if(collision_detect_on == true){
	oVarGame.bomb_current_count++;
	oVarGame.enemy_bar_destroyed_count++;
	oVarGame.gate_destroyed_type[type]++;
	if(oVarGame.enemy_bar_destroyed_count%oVarGame.enemy_eliminate_count == 0)
	{
		with(oEnemy_Follow)
		{
			instance_destroy();	
		}
		FxScreenShake(5,5,5);

	}else
	{
		FxScreenShake(3,3,5);
	}

	if(ds_map_exists(oVarGame.enemy_bar_to_edge_map,id))
	{
		instance_destroy(oVarGame.enemy_bar_to_edge_map[? id]);	
	}

	instance_destroy();
}
