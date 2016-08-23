if(global.pause) {exit;}
if(!global.gameStart) {exit;}
if(obj_division_bar.gameOver) {exit;}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_font(fnt_division);

draw_text(x,y,string(digit[2])+" "+string(digit[1])+" "+string(digit[0]));
