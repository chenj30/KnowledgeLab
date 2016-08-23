if (grabbed)
{
    grabbed = false; //no longer being grabbed
    if(global.musicOn)
        audio_play_sound(snd_water,0,0);
    for(var i = 0; i < obj_graph_controller.blockNum; i++) //check all blocks
    {
        if(i == thisBlock_i) {continue;}
        var otherBlock = obj_graph_controller.bar_block[i]; //get the id of the block being checked
        if(point_in_rectangle(mouse_x,mouse_y,otherBlock.id.x,otherBlock.id.y-3*UNIT,otherBlock.id.x+128,768)) //if placed on top of the otherBlock's bar
        {
            var otherBar = obj_graph_controller.bar[i];
            if(otherBar == 10) 
            {
                x = prev_x;
                y = prev_y;
            }
            else
            {
                x = prev_x;
                y = prev_y+UNIT;
                prev_y = y;
                obj_graph_controller.bar[thisBlock_i]--;
                obj_graph_controller.bar_block[i].y = obj_graph_controller.bar_block[i].prev_y-UNIT;
                with(obj_graph_controller.bar_block[i]) {prev_y = y;}
                obj_graph_controller.bar[i]++;
            }
        }
        else
        {
            x = prev_x;
            y = prev_y;
        }
    }
}
