if(global.pause) {exit;}

if(global.screen == 1)
{
    // Alignments
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    // Draw text
    var spacing_x = 266;
    var spacing_y = 67;
    var text_x;
    var text_y;
    for(var c = 0; c < 3; c++)
    {
        if(c == 0) {text_x = self.x-spacing_x;}
        else if(c == 2) {text_x = self.x+spacing_x;}
        else {text_x = self.x;}
        for(var r = 0; r < 2; r++)
        {
            if(r == 0) {text_y = self.y-spacing_y;}
            else {text_y = self.y;}
            if(global.minigames[c,r])
            {
                if(global.perfects[c,r]) 
                {
                    draw_set_font(fnt_perfect);
                    draw_text_outlined(text_x,text_y, miniGameNames[c,r],c_perfect,c_black,1);
                }
                else 
                {
                    draw_set_font(fnt_hubScreen_C);
                    draw_set_colour(c_black);
                    draw_text(text_x,text_y,miniGameNames[c,r]);
                }
            }
            else
            {
                draw_set_font(fnt_hubScreen_C);
                draw_set_colour(c_black);
                draw_text(text_x,text_y,"------");
            }
        }
    }
}
