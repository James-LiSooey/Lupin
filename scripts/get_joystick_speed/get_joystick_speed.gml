var _result = 0;

if(abs(point_distance(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y)) > 0)
{
	 _result = (abs(point_distance(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y)))/(oOuterJoy.sprite_height/2);
}

if(_result <= oVarGame.DeadZone)
{
	_result = 0
}

return _result;
