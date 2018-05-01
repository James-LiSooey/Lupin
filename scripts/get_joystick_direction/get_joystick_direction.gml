var _result = 0;

if(point_direction(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y) > 0)
{
	 _result = point_direction(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y)+180
}

return _result;