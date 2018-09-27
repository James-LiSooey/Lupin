/// @add Flick to queue
//

var dragEndX = event_data[?"posX"];
var dragEndY = event_data[?"posY"];


var flickX = dragEndX - dragStartX;
var flickY = dragStartY - dragEndY;
var absX = abs(flickX);
var absY = abs(flickY);

var swipe_direction = point_direction(dragStartX, dragStartY, dragEndX, dragEndY);

isFlick = event_data[?"isflick"];
if(isFlick){
	
	ds_queue_enqueue(oVarGame.input_Queue,"FLICK");
	
	ds_queue_enqueue(oVarGame.swipe_input_Queue, swipe_direction);
	
}

