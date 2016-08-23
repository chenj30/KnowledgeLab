if(global.pause){exit;}
if(!global.gameStart) {exit;}
if(gameOver) {exit;}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_ui);

if(weightGiven_numr == 0)
    output_frac = "0";
else if (weightGiven_numr mod weightGiven_denom == 0)
    output_frac = string(weightGiven_numr)+"/"+string(weightGiven_denom);
else 
{
    var gcd_num = gcd(weightGiven_numr, weightGiven_denom);
    weightGiven_numr /= gcd_num;
    weightGiven_denom /= gcd_num;
    output_frac = string(weightGiven_numr)+"/"+string(weightGiven_denom);
}
draw_set_colour(c_red);
draw_text(x,y,output_frac);

if (weightNeeded_numr mod weightNeeded_denom == 0)
    output_needFrac = string(weightNeeded_numr/weightNeeded_denom);
else
    output_needFrac = string(weightNeeded_numr)+"/"+string(weightNeeded_denom);
    
draw_set_colour(c_black);
draw_text(x,y+32,output_needFrac);

draw_set_colour(c_black);
draw_text(x,y+64,"No more than " + string(presentLimit) + " presents.");

draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_set_colour(c_black);
draw_text(32,y+32,"Time left:  " + string_format(timer/30,2,0) + " sec.");
draw_text(32,y+64,"Boxes completed: " + string(level));
