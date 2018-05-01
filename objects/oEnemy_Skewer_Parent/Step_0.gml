
image_angle += rotation_speed;

if(alarm0 ==true)
{
	alarm0 = false;
	alarm[0] = 30;

}

if(collision_detect_on){
	irandom_range(20,40)

	if(instance_exists(oPlayer))
	{
		move_towards_point(oPlayer.x,oPlayer.y,oVarGame.enemy_follow_speed);
	}
}
