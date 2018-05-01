/// @description Image Alpha/Hit Detection

if(image_alpha<1)
{
	image_alpha = 1;
	alarm0 = true;
	collision_detect_on = true;	
}else{
	collision_detect_on = true;	
}
