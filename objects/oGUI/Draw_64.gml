draw_set_font(fComic_Sans)

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(32,24,oVarGame.Enemy_Streak_Count)
if(oVarGame.Enemy_Streak == GREEN){
	draw_text(80,24,"GREEN")
}else{
	draw_text(80,24,"BLUE")
}
draw_text(32,64,oVarGame.enemy_bar_destroyed_count)
//draw_text(80,64,oVarGame.Enemy_Streak_Count)
