if(clicked && visible)
{
    clicked = false;
    with(parent_div_box) {instance_destroy();}
    with(obj_subt_line) {instance_destroy();}
    with(obj_division_bar) 
    {
        gameRestartDivision();
        drumControl();
        image_index = 0;
    }
    obj_div_box_R.answer = -1;
}
    
