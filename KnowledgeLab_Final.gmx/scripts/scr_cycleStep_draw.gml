if(global.pause || !global.gameStart) {exit;}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_ui);
var font_size = font_get_size(fnt_ui);
draw_set_color(c_white);

if(evaporation)
    draw_set_colour(c_lime);
else
    draw_set_colour(c_white);
draw_text(obj_cycleStep.x,obj_cycleStep.y,"Evaporation");

if(condensation)
    draw_set_colour(c_lime);
else
    draw_set_colour(c_white);
draw_text(obj_cycleStep.x,obj_cycleStep.y+font_size,"Condensation");

if(precipitation)
    draw_set_colour(c_lime);
else
    draw_set_colour(c_white);
draw_text(obj_cycleStep.x,obj_cycleStep.y+2*font_size,"Precipitation");

if(runoff)
    draw_set_colour(c_lime);
else
    draw_set_colour(c_white);
draw_text(obj_cycleStep.x,obj_cycleStep.y+3*font_size,"Run off");

if(!gameOver)
{
    draw_circle_colour(obj_cycleStep.x-16,obj_cycleStep.y+font_size/2+cycleStep*font_size,font_size/2,c_yellow,c_yellow,false);
}
