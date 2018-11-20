/// @Input Processing
if(oVarGame.Controls = JOYSTICK_CONTROL)
{
	if(mouse_check_button_pressed(mb_left))
	{
		create_joystick(mouse_x,mouse_y);
	}
	if(mouse_check_button(mb_left) and oVarGame.Joystick_Created)
	{
		run_joystick();
		with(oPlayer)
		{
			speed = oVarGame.player_speed*(oVarGame.game_fps/60)*get_joystick_speed();
			direction = get_joystick_direction();
		}
	}
	
	if(mouse_check_button_released(mb_left))
	{
		remove_joystick();
	}
	if(!mouse_check_button(mb_left))
	{
		with(oPlayer)
		{
			if(speed>oVarGame.playerFriction*(oVarGame.game_fps/60)){
				speed -= oVarGame.playerFriction*(oVarGame.game_fps/60);
			}else{
				speed = 0;
			}
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