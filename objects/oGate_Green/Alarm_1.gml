
alarm1 = true;

drift_direction = irandom(359);
drift_speed = random_range(0,.1);

if(ds_map_exists(oVarGame.enemy_bar_to_edge_map,id)){
	var _attached_edge = oVarGame.enemy_bar_to_edge_map[? id];	
	_attached_edge.drift_direction = drift_direction;
	_attached_edge.drift_speed = drift_speed;
}
