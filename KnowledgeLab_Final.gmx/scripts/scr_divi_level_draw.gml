if(global.pause) {exit;}
if(!global.gameStart) {exit;}
if(obj_division_bar.gameOver) {exit;}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_ui);

draw_set_colour(c_white);
draw_text(x,y,"Songs played: " + string(obj_division_bar.level));
