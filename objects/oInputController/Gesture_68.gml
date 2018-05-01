/// @add Flick to queue
//

var flickX = event_data[?"posX"] - dragStartX;
var flickY = dragStartY - event_data[?"posY"];
var absX = abs(flickX);
var absY = abs(flickY);

isFlick = event_data[?"isflick"];
if(isFlick){
	if(absY>absX)
	{
		if(flickY>0)
		{
			ds_queue_enqueue(oVarGame.input_Queue,"FLICKUP");
		}
		else
		{
			ds_queue_enqueue(oVarGame.input_Queue,"FLICKDOWN");
		}
	} 
	else
	{
		if(flickX>0)
		{
			ds_queue_enqueue(oVarGame.input_Queue,"FLICKRIGHT");
		}
		else
		{
			ds_queue_enqueue(oVarGame.input_Queue,"FLICKLEFT");
		}
	}
}

