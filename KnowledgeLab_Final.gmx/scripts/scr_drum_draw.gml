if(global.pause) {exit;}
if(!global.gameStart) {exit;}
if(obj_division_bar.gameOver) {exit;}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_division);
draw_set_colour(c_black);

draw_text(x,y,string(obj_division_bar.numbers[drumID]));
