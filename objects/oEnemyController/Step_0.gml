
var _enemy_type = irandom(oVarGame.enemy_randomize);

if(create_gate){
	alarm[0] = oVarGame.gate_spawn_rate;
	create_gate = false;
}

if(create_missile){
	create_missile = false;
	alarm[3] = oVarGame.missile_spawn_rate;
}
