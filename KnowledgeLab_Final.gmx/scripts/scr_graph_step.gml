if(gameOver) {exit;}
if(global.pause) {exit;}
if(!global.gameStart) {exit;}

timer--;
if(timer <= 0) 
{
    show_message("Game Over!");
    gameOver = true;
    if (level > 3 && room != rm_graph_boss) 
    {
        if(!global.minigames[0,0])
        {
            global.progress++;
            show_message("Good job! You've gained 1 GB of memory");
            global.minigames[0,0] = true;
        }
        instance_create(x+sprite_width/2,y-sprite_height/2,but_next);
    }
    else if (level <= 3)
    {
        instance_create(x+sprite_width/2,y-sprite_height/2,but_restart);
    }
}   
if(room == rm_graph_boss)
{
    bad_timer--;
    if(bad_timer <= 0)
    {
        obj_graph_antag.sprite_index = spr_graph_antag_grr;
        obj_graph_antag.alarm[0] = 30;
        var a = 0;
        var b = 0;
        do {a = irandom(4);} until (!bar_block[a].id.grabbed && bar[a] > 1);
        do {b = irandom(4);} until (a != b && !bar_block[b].id.grabbed && bar[b] < 10);
        bar_block[a].y += UNIT;
        bar_block[a].prev_y = bar_block[a].y;
        bar[a]--;
        bar_block[b].y -= UNIT;
        bar_block[b].prev_y = bar_block[b].y;
        bar[b]++;
        bad_timer = 150;
    }
}

var test = false;
for(var i = 0; i < blockNum; i++)
{
    test = bar[i] == flowHeight;
    if(!test) {break;}
}
levelComplete = test;
if(levelComplete)
{
    show_message("Level Complete!");
    level++;
    if(level > 4)
    {
        show_message("Game Complete!")
        gameOver = true;
        instance_create(x+sprite_width/2,y-sprite_height/2,but_next);
        if(room != rm_graph_boss)
        {
            if(!global.minigames[0,0])
            {
                global.progress++;
                show_message("Good job! You've gained 1 GB of memory");
                global.minigames[0,0] = true;
            }
            if(!global.perfects[0,0])
            {
                global.progress++;
                show_message("Wow! Perfect! You've gained another 1 GB of memory");
                global.perfects[0,0] = true;
            }
        }
    }
    else
    {
        timer += 150;
        bad_timer = 150;
        with(obj_bar_block) {instance_destroy();}
        graph_gameStart();
    }
}
    
