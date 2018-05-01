if(collision_detect_on == true){
	if(ds_map_exists(oVarGame.enemy_skewer_center_edge_map,id))
	{
		instance_destroy(oVarGame.enemy_skewer_center_edge_map[? id]);	
	}else if(ds_map_exists(oVarGame.enemy_skewer_edge_center_map,id))
	{
		instance_destroy(oVarGame.enemy_skewer_edge_center_map[? id]);	
	}

	instance_destroy();
}
