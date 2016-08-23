if(global.pause){exit;}
if(!global.gameStart) {exit;}
if(obj_frac_box.gameOver) {exit;}
if(draw_time > 0)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_set_font(fnt_ui);
    draw_set_colour(c_aqua);
    
    if(weight_denom == 1)
        draw_text(obj_frac_box.x+64, obj_frac_box.y, "+ 1");
    else
        draw_text(obj_frac_box.x+64, obj_frac_box.y, "+ 1/"+string(weight_denom));
}
if(grabbed)
{
    draw_sprite(self.sprite_index, 0 , prev_x,prev_y);
}
