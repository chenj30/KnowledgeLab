if(global.pause || !global.gameStart) 
{
    visible = false;
    exit;
}
else
    visible = true;
if(obj_graph_controller.gameOver)
{
    sprite_index = spr_graph_bar;
    x = prev_x;
    y = prev_y;
    exit;
}
for(var i = 0; i < obj_graph_controller.blockNum; i++)
    if(self.id == obj_graph_controller.bar_block[i])
        thisBlock_i = i;

if(position_meeting(mouse_x, mouse_y,self) && !grabbed)
    sprite_index = spr_graph_bar_in;
else
    sprite_index = spr_graph_bar;        

if(grabbed)
{
    sprite_index = spr_graph_bar_calm;
    x = mouse_x-sprite_width/2;
    y = mouse_y-sprite_height/2;
}
