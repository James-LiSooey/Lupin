
var radius = oOuterJoy.sprite_height*.5;
var radius_direction;

if(point_distance(mouse_x,mouse_y,oVarGame.Joystick_CenterX,oVarGame.Joystick_CenterY)>radius)
{
	radius_direction = point_direction(oVarGame.Joystick_CenterX,oVarGame.Joystick_CenterY,mouse_x,mouse_y);
	oInnerJoy.x = oVarGame.Joystick_CenterX+lengthdir_x(radius,radius_direction)
	oInnerJoy.y = oVarGame.Joystick_CenterY+lengthdir_y(radius,radius_direction)
}else{
	oInnerJoy.x = mouse_x;
	oInnerJoy.y = mouse_y;	
}

var _OuterJoyDistance = abs(point_distance(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y) - (oOuterJoy.sprite_height/2))
var _pointDirection = point_direction(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y);

/*
if(point_distance(oInnerJoy.x, oInnerJoy.y, oOuterJoy.x,oOuterJoy.y) > (oOuterJoy.sprite_height/2)){
	oOuterJoy.x -= lengthdir_x(_OuterJoyDistance,_pointDirection);
	oOuterJoy.y -= lengthdir_y(_OuterJoyDistance,_pointDirection);
}*/