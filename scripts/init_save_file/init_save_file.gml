
if(!(file_exists("Save_File.ini")))
{
	ini_open("Save_File.ini");
	ini_write_real("Save1","score1", 10 );
	ini_write_real("Save1","score2", 4 );
	ini_write_real("Save1","score3", 3 );
	ini_write_real("Save1","score4", 2 );
	ini_write_real("Save1","score5", 1 );
	ini_close();	
}
