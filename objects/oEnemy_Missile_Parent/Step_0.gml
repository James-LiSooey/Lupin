
image_angle += rotation_speed;

if(alarm0 ==true)
{
	alarm0 = false;
	alarm[0] = 30;

}

if(x<100){
	alarm[1] = random_range(45,75);
	speed = 0;
	x=100;
}
if(x>room_width){
	alarm[1] = random_range(45,75);;
	speed = 0;
	x = room_width;
}
if(y<100){
	alarm[1] = random_range(45,75);;
	speed= 0;
	y = 100;
}
if(y>room_height-oVarGame.height_buffer){
	alarm[1] = random_range(45,75);;
	speed = 0;
	y = room_height-oVarGame.height_buffer;
}

