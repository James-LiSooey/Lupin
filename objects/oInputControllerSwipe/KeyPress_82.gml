/// @description 60 FPS
oVarGame.game_fps = 60;

if(oEnemy_Missile.speed>0){
	oEnemy_Missile.speed = oVarGame.enemy_missile_speed * oVarGame.game_fps/60;
}
