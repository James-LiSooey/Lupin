/// @Input Processing

var input = "";
var swipe_direction;
var nearest_hoop;

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
			speed = oVarGame.player_speed*.85*get_joystick_speed();
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
			if(speed>oVarGame.playerFriction){
				speed -= oVarGame.playerFriction;
			}else{
				speed = 0;
			}
		}
	}
}
//Swipe controls
else
{
	
	oVarGame.prop_teleport = 0;

	//pull input and swipe from queue
	if(!ds_queue_empty(oVarGame.input_Queue))
	{
		input = ds_queue_dequeue(oVarGame.input_Queue);
		swipe_direction = ds_queue_dequeue(oVarGame.swipe_input_Queue);
	}

	if(input == "TAP")
	{
		oPlayer.speed = 0;
	}

	if(input == "FLICK")
	{
		oPlayer.direction = swipe_direction;
		oPlayer.speed = oVarGame.player_speed;
	}

}