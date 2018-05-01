/// @Input Processing

var input = "";
var nearest_hoop;
oVarGame.prop_teleport = 0;

if(!ds_queue_empty(oVarGame.input_Queue))
{
	input = ds_queue_dequeue(oVarGame.input_Queue);
}

if(input == "TAP")
{
	oPlayer.speed = 0;
}

if(input == "DOUBLETAP")
{
	if(oVarGame.bomb_count>0)
	{
		instance_create_layer(oPlayer.x,oPlayer.y,"layer_enemies",oBomb);
		oVarGame.bomb_count--;
	}
}

if(input == "FLICKUP")
{
	oPlayer.speed = 0;
	oPlayer.vspeed = -oVarGame.player_speed;
}

if(input == "FLICKDOWN")
{
	oPlayer.speed = 0;
	oPlayer.vspeed = oVarGame.player_speed;
}

if(input == "FLICKRIGHT")
{
	oPlayer.speed = 0;
	oPlayer.hspeed = oVarGame.player_speed;
}

if(input == "FLICKLEFT")
{
	oPlayer.speed = 0;
	oPlayer.hspeed = -oVarGame.player_speed;
}
