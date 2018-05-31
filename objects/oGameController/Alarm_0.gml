/// @Restart Game

oSettings.most_recent_score = oVarGame.enemy_bar_destroyed_count;
save_score(oVarGame.enemy_bar_destroyed_count);

room_goto(rmRestart);