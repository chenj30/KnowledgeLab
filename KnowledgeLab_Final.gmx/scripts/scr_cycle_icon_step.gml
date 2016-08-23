if(global.pause) {exit;}
if(!global.gameStart) {exit;}
if(!grabbed)
{
    if(placed) {exit;}
    if(position_meeting(mouse_x, mouse_y,self))
        image_index = 1;
    else
        image_index = 0;        
}
else
{
    x = mouse_x;
    y = mouse_y;
}
