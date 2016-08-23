#define scr_gameSelect_GLMrelease
if(global.pause || global.textbox) {exit;}
if(selection && clickedG)
{
    clickedG = false;
    for ( var m = 0; m < 4; m++)
    {
        if(point_in_rectangle(mouse_x,mouse_y,
          view_wview[0]/2-256,256+view_yview[0]+(m * gSpace)-32,
          view_wview[0]/2+256,256+view_yview[0]+(m * gSpace)+32))
        {
            gameSwitch(m);
        }
    }
}

#define gameSwitch
selection = false;
switch(argument0)
{
    case 0: 
    room_goto(game1);
    break;

    case 1:
    room_goto(game2);
    break;

    case 2:
    room_goto(gameB);
    break;
    
    default: 
    break;
}