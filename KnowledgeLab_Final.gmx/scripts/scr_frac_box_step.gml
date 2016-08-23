if(gameOver) {exit;}
if(global.pause) {exit;}
if(!global.gameStart) {exit;}

timer--;
if(timer <= 0) 
{
    show_message("Game Over!");
    gameOver = true;
    if (level >= 5 && room != rm_fractions_boss)
    {
        if(!global.minigames[1,0])
        {
            global.progress++;
            global.minigames[1,0] = true;
            show_message("Good job! You've gained 1 GB of memory.");
        }
        obj_frac_robot.image_index = 1;
        instance_create(x,y,but_next);
    }
    else if (level < 5 && room != rm_fractions_boss)
    {
        instance_create(x,y,but_restart);
    }
    else if (level < 10 && room == rm_fractions_boss)
    {
        instance_create(x,y,but_restart);
    }   
}
if(room = rm_fractions_boss)
{
    bad_timer--;
    if (bad_timer <= 0)
    {
        bad_timer = 165;
        obj_frac_antag.sprite_index = spr_cycle_antag_grr;
        obj_frac_antag.alarm[0] = 30;
        if(weightGiven_numr > 0)
        {
            weightGiven_numr = prev_weight_numr;
            weightGiven_denom = prev_weight_denom;
            prev_weight_numr = weightGiven_numr;
            prev_weight_denom = weightGiven_denom;
            presentsIn--;
        }
        else
        {
            do
            {
                fracGameRestart();
            } until (weightNeeded_numr != prev_numr && weightNeeded_denom != prev_denom && (weightNeeded_numr/weightNeeded_denom) != (prev_numr/prev_denom));
            prev_numr = weightNeeded_numr;
            prev_denom = weightNeeded_denom;
            prev_weight_numr = 0;
            prev_weight_denom = 1;
        }
    }
}
if(presentsIn < 0) {presentsIn = 0;}
if (weightGiven_numr == weightNeeded_numr && weightGiven_denom == weightNeeded_denom && presentsIn <= presentLimit)
{    
    show_message("Correct!");
    do
    {
        fracGameRestart();
    } until (weightNeeded_numr != prev_numr && weightNeeded_denom != prev_denom && (weightNeeded_numr/weightNeeded_denom) != (prev_numr/prev_denom));
    prev_numr = weightNeeded_numr;
    prev_denom = weightNeeded_denom;
    prev_weight_numr = 0;
    prev_weight_denom = 1;
    timer += 60*presentLimit;
    bad_timer = 165;
    level++;
    if(level >= 10)
    {
        show_message("Game Complete!")
        gameOver = true;
        if(room != rm_fractions_boss)
        {
            if(!global.minigames[1,0])
            {
                global.progress++;
                global.minigames[1,0] = true;
                show_message("Good job! You've gained 1 GB of memory.");
            }
            if(!global.perfects[1,0])
            {
                global.progress++;
                show_message("Wow! Perfect! You've gained another 1 GB of memory");
                global.perfects[1,0] = true;
            }
        }
        instance_create(x,y,but_next);
        obj_frac_robot.image_index = 1;
    }   
}
