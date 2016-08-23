if(global.pause) {exit;}
if(!global.gameStart) {exit;}
if(obj_division_bar.gameOver) {exit;}
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_font(fnt_division);

if(digit[1] > 0)
    draw_text(x,y,string(digit[1])+string(digit[0]));
else
    draw_text(x,y,string(digit[0]));
