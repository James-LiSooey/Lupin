if(instance_exists(oInnerJoy)||instance_exists(oOuterJoy))
{
	remove_joystick();
}

oVarGame.Joystick_CenterX = argument0;
oVarGame.Joystick_CenterY = argument1;

instance_create(oVarGame.Joystick_CenterX,oVarGame.Joystick_CenterY,oInnerJoy);
instance_create(oVarGame.Joystick_CenterX,oVarGame.Joystick_CenterY,oOuterJoy);

oVarGame.Joystick_Created = true;
