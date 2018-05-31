#macro SWIPE_CONTROL 0
#macro JOYSTICK_CONTROL 1

ControlSettings = JOYSTICK_CONTROL;

init_save_file();

list_high_scores = ds_list_create();

ds_list_add(oSettings.list_high_scores, 0);
ds_list_add(oSettings.list_high_scores, 0);
ds_list_add(oSettings.list_high_scores, 0);
ds_list_add(oSettings.list_high_scores, 0);
ds_list_add(oSettings.list_high_scores, 0);

list_score_index = ds_list_create();

ds_list_add(oSettings.list_score_index, "score1");
ds_list_add(oSettings.list_score_index, "score2");
ds_list_add(oSettings.list_score_index, "score3");
ds_list_add(oSettings.list_score_index, "score4");
ds_list_add(oSettings.list_score_index, "score5");

most_recent_score = 0;


get_high_scores();

