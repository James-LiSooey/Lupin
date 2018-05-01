if(instance_exists(oInnerJoy)||instance_exists(oOuterJoy))
{
	remove_joystick();
}

instance_create(argument0,argument1,oInnerJoy);
instance_create(argument0,argument1,oOuterJoy);

oVarGame.Joystick_Created = true;
