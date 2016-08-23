if(global.pause || obj_division_bar.gameOver || !global.gameStart || obj_division_bar.solved) 
{
    image_index = 0;
    exit;
}
if(position_meeting(mouse_x, mouse_y,self))
    if(clicked)
        image_index = 2;
    else
        image_index = 1;
else
    image_index = 0;
if(room == rm_division_boss)
{
    if(obj_division_antag.sprite_index == spr_graph_antag_grr)
    {
        image_index = 3;
    }
}
