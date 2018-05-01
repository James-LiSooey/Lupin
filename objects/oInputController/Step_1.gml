/// @Input Processing
if(oVarGame.Controls = JOYSTICK_CONTROL)
{
	if(mouse_check_button_pressed(mb_left))
	{
		create_joystick(mouse_x,mouse_y);
	}
	
	if(mouse_check_button_released(mb_left))
	{
		remove_joystick();
		speed = 0;
	}
	if(mouse_check_button(mb_left) and oVarGame.Joystick_Created)
	{
		run_joystick();
		with(oPlayer)
		{
			speed = oVarGame.player_speed*.85*get_joystick_speed();
			direction = get_joystick_direction();
		}
	}
}
else
{
	
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
}