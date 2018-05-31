
if(file_exists("Save_File.ini"))
{
	ini_open("Save_File.ini");

	oSettings.list_high_scores[| 0]	= ini_read_real("Save1","score1",0);
	oSettings.list_high_scores[| 1]	= ini_read_real("Save1","score2",0);
	oSettings.list_high_scores[| 2]	= ini_read_real("Save1","score3",0);
	oSettings.list_high_scores[| 3]	= ini_read_real("Save1","score4",0);
	oSettings.list_high_scores[| 4]	= ini_read_real("Save1","score5",0);
	
	ini_close();	
}
else
{
	init_save_file();	
}


