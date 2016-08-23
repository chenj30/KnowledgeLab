if(obj_frac_box.gameOver) {exit;}
if(global.pause) {exit;}
if(!global.gameStart)
{
    visible = false;
    exit;
}
else
    visible = true;

if(!grabbed)
{
    if(position_meeting(mouse_x, mouse_y,self))
        image_index = 1;
    else
        image_index = 0;
}
else
{
    image_index = 0;
    x = mouse_x;
    y = mouse_y;
}
draw_time--;
