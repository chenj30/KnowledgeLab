if(global.pause && !(room == rm_mainMenu || room == rm_settings))
{
    for ( m = 0; m < 4; m++)
    {
        if(point_in_rectangle(mouse_x,mouse_y,
          view_wview[0]/2-256,256+view_yview[0]+(m * pSpace)-32,
          view_wview[0]/2+256,256+view_yview[0]+(m * pSpace)+32))
        {
            pauseSwitch(m);
        }
    }
}
