if(gameOver) {exit;}
if(obj_sunIcon.placed && !evaporation)
{
    show_message("You have created Evaporation!");
    evaporation = true;
    obj_vaporObj.visible = true;
    obj_sunIcon.image_speed = 0.1;
    if(room == rm_cycle_boss)
    {
        obj_cycle_antag.sprite_index = spr_cycle_antag_grr;
        obj_cycle_antag.alarm[0] = 30;
        cycleStep+=choose(2,3);
    }
    else
        cycleStep++;
}
if(obj_cloudIcon.placed && !condensation)
{
    show_message("You have completed Condensation!");
    condensation = true;
    obj_cloudIcon.image_speed = 0.1;
    if(room == rm_cycle_boss)
    {
        obj_cycle_antag.sprite_index = spr_cycle_antag_grr;
        obj_cycle_antag.alarm[0] = 30;
        cycleStep+=choose(2,3);
    }
    else
        cycleStep++;
}
if(obj_rainIcon.placed && !precipitation)
{
    show_message("You have completed Precipitation!");
    precipitation = true;
    obj_rainIcon.image_speed = 0.3;
    if(room == rm_cycle_boss)
    {
        obj_cycle_antag.sprite_index = spr_cycle_antag_grr;
        obj_cycle_antag.alarm[0] = 30;
        cycleStep+=choose(2,3);
    }
    else
        cycleStep++;
}
if(obj_landIcon.placed && !runoff)
{
    show_message("You have completed Run-off!");
    runoff = true;
    obj_landIcon.image_speed = 0.3;
    if(room == rm_cycle_boss)
    {
        obj_cycle_antag.sprite_index = spr_cycle_antag_grr;
        obj_cycle_antag.alarm[0] = 30;
        cycleStep+=choose(2,3);
    }
    else
        cycleStep++;
}
if(obj_sunIcon.placed && obj_cloudIcon.placed && obj_rainIcon.placed && obj_landIcon.placed)
{
    show_message("You completed the Water Cycle!");
    gameOver = true;
    if(room != rm_cycle_boss)
    {
        instance_create((room_width-32*6)/2,(room_height-32*4)/2,but_next);
        if(!global.minigames[0,1])
        {
            global.progress++;
            global.minigames[0,1] = true;
        }
        if(!global.perfects[0,1])
        {
            global.progress++;
            global.perfects[0,1] = true;
            show_message("You've gained 2 GB of memory!");
        }
    }
    else if (room == rm_cycle_boss)
    {
        if(!obj_ui.scienceComplete)
            instance_create(TEXT_X, TEXT_Y, obj_after_science_txt);
        obj_ui.scienceComplete = true;
        instance_create((room_width-32*6)/2,(room_height-32*4)/2,but_homeG);
        scr_preFinalCheck();
    }
}
if(cycleStep == 0 && evaporation || 
  cycleStep == 1 && condensation || 
  cycleStep == 2 && precipitation ||
  cycleStep == 3 && runoff)
    cycleStep++;
  
if(cycleStep > 3) {cycleStep -= 4;}
