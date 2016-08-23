if(global.pause || global.textbox) {exit;}
if(selection)
{
    // Alignments
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    // Font
    draw_set_font(fnt_menu);
    // Background
    draw_set_color(c_black);
    draw_set_alpha(.9);
    draw_rectangle(0,0,view_xview[0]+1024, view_yview[0]+768, 0);
    // Text
    draw_set_alpha(1);
    for ( var m = 0; m < 4; m++)
    {
        draw_set_color(c_white);
        if(point_in_rectangle(mouse_x,mouse_y,
          view_wview[0]/2-256,256+view_yview[0]+(m * gSpace)-32,
          view_wview[0]/2+256,256+view_yview[0]+(m * gSpace)+32))
        {
            draw_set_color(c_teal);
            gameSelect = m;
        }
        draw_text(view_wview[0]/2,view_yview[0] + 256 + (m * gSpace), string(gMenu[m]));
    }
    // Icon
    draw_sprite(global.icon, 0, view_wview[0]/2 - 256,view_yview[0] + 256 + (gameSelect * gSpace));
}
