if(global.pause || obj_division_bar.gameOver || !global.gameStart) {exit;}
if(room == rm_division_boss)
{
    bad_timer--;
    if(bad_timer <= 0)
    {
        bad_timer = 210;
        obj_division_antag.sprite_index = spr_graph_antag_grr;
        obj_division_antag.alarm[0] = 30;
    }
}
if(level >= 5)
{
    clicked = true;
    song();
    show_message("Game Complete!");
    gameOver = true;
    if(room != rm_division_boss)
    {
        if(!global.minigames[1,1])
        {
            global.progress++;
            global.minigames[1,1] = true;
        }
        if(!global.perfects[1,1])
        {
            global.progress++;
            show_message("Great Job! You've gained 2 GB of memory");
            global.perfects[1,1] = true;
        }
        instance_create(room_width/2,room_height/2,but_next);
    }
    else
    {
        if(!obj_ui.mathComplete)
            instance_create(TEXT_X, TEXT_Y, obj_after_math_txt);
        obj_ui.mathComplete = true;
        instance_create(room_width/2,room_height/2,but_homeG);
        scr_preFinalCheck();
    }
}
if(solved){exit;}
if (given_ans == current_ans)
{
    box_selected.answer = given_ans;
    operation++;
    if(operation == 6)
    { 
        given_ans = -1;
        solved = true;
        show_message("Problem solved!");
        level++;
    }
    if (operation == 4) 
        operation = 0;
    switch(operation)
    {
        //divide
        case 0:
        box_selected = instance_create(obj_divi_box_D_s.x+64*(2-digit),obj_divi_box_D_s.y,obj_div_box_D);
        current_ans = (bring_down*10+obj_dividend.digit[digit]) div obj_divisor.number;
        given_ans = -1;
        with(obj_division_bar) {drumControl();}      
        break;
        
        //multiply
        case 1:
        box_selected = instance_create(obj_divi_box_M_s.x+64*(2-digit),obj_divi_box_M_s.y+192*(2-digit),obj_div_box_M);
        current_ans *= obj_divisor.number;
        given_ans = -1;
        with(obj_division_bar) {drumControl();}      
        break;
        
        //subtract
        case 2:
        box_selected = instance_create(obj_divi_box_S_s.x+64*(2-digit),obj_divi_box_S_s.y+192*(2-digit),obj_div_box_S);
        instance_create(box_selected.x, box_selected.y, obj_subt_line);
        current_ans = (bring_down*10+obj_dividend.digit[digit]) - current_ans;
        given_ans = -1;
        with(obj_division_bar) {drumControl();}      
        break;
        
        //bring down
        case 3:
        if(digit > 0) 
        {
            box_selected = instance_create(obj_divi_box_B_s.x+64*(2-digit),obj_divi_box_B_s.y+192*(2-digit),obj_div_box_B);
            bring_down = current_ans;
            current_ans = obj_dividend.digit[digit-1];
            given_ans = -1;
            digit--;
            with(obj_division_bar) {drumControl();}      
        }
        else if(current_ans != 0)
        {
            box_selected = obj_div_box_R;
            image_index = 1;
            operation = 5;
            given_ans = -1;
            with(obj_division_bar) {drumControl();}      
        }
        else
        {
            given_ans = -1;
            solved = true;
            show_message("Problem solved!");
            level++;
        }    
        break;
        
        default:
        break;
    }
}
else if (given_ans != -1)
{
    show_message("This doesn't sound quite right.");
    given_ans = -1;
}
