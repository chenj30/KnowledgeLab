if(global.pause) {exit;}
if(!global.gameStart) {exit;}
if(obj_division_bar.gameOver) {exit;}
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_font(fnt_division);

if(room != rm_division_boss)
{
    if(obj_division_bar.box_selected.id == self.id && !obj_division_bar.solved)
        image_index = 1;
    else
        image_index = 0;
}

if(answer > -1 && answer < 10)
    draw_text(x,y,string(answer));
else if(answer >= 10)
    draw_text(x,y,string(answer div 10)+" "+string(answer mod 10));
