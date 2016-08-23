if(global.pause || global.textbox) {exit;}
if(selection)
{
    for ( var m = 0; m < 4; m++)
    {
        if(point_in_rectangle(mouse_x,mouse_y,
          view_wview[0]/2-256,256+view_yview[0]+(m * gSpace)-32,
          view_wview[0]/2+256,256+view_yview[0]+(m * gSpace)+32))
        {
            clickedG = true;
        }
    }
}
