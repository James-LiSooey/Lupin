
image_angle += rotation_speed;

if(alarm0 ==true)
{
	alarm0 = false;
	alarm[0] = 30;

}

if(x<sprite_width){
	alarm[1] = random_range(45,75);
	speed = 0;
	x=sprite_width+3;
}
if(x>room_width){
	alarm[1] = random_range(45,75);;
	speed = 0;
	x = room_width-sprite_width-3;
}
if(y<sprite_height){
	alarm[1] = random_range(45,75);;
	speed= 0;
	y = sprite_height+3;
}
if(y>room_height-sprite_height){
	alarm[1] = random_range(45,75);;
	speed = 0;
	y = room_height-sprite_height-3;
}

