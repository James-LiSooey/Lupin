

/*
if(place_meeting(x,y,oBorder)){
	x=xprevious;
	y=yprevious;
}
*/

x = max(x,64);
x = min(x,room_width-64);

y = max(y,64);
y = min(y, room_height-64);