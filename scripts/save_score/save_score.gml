
get_high_scores()

if(file_exists("Save_File.ini"))
{
	ini_open("Save_File.ini");

	var save_index = -1;

	for(counter = 0; counter<5; counter++)
	{
		if(oSettings.list_high_scores[| counter] < argument0)
		{
			save_index = counter;
			counter = 100;
		}
	}

	if(save_index>-1)
		{
		ini_write_real("Save1",oSettings.list_score_index[| save_index], argument0 );

		for(count = save_index+1; count<5; count++)
		{
			ini_write_real("Save1",oSettings.list_score_index[| (count)], oSettings.list_high_scores[| count-1] );	
		}
	}

	ini_close();	

}

get_high_scores()
