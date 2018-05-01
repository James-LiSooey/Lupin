oInnerJoy.x = mouse_x;
oInnerJoy.y = mouse_y;

var _OuterJoyDistance = abs(point_distance(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y) - (oOuterJoy.sprite_height/2))
var _pointDirection = point_direction(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y);

if(point_distance(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y) > (oOuterJoy.sprite_height/2)){
	oOuterJoy.x -= lengthdir_x(_OuterJoyDistance,_pointDirection);
	oOuterJoy.y -= lengthdir_y(_OuterJoyDistance,_pointDirection);
}