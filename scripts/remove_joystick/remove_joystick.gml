if(instance_exists(oInnerJoy))
{
	instance_destroy(oInnerJoy);
}
if(instance_exists(oOuterJoy))
{
	instance_destroy(oOuterJoy);
}

oVarGame.Joystick_Created  = false;