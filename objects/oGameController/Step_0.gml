
if(oVarGame.bomb_powerup_amount-oVarGame.bomb_current_count <= 0)
{
	oVarGame.bomb_count += 1;
	oVarGame.bomb_current_count = 0
}

if(oVarGame.Enemy_Streak_Count > 3){
	clear_enemies(oVarGame.Enemy_Streak);
	oVarGame.Enemy_Streak_Count = 0;
	oVarGame.Enemy_State = (oVarGame.Enemy_State -1 )*-1
}