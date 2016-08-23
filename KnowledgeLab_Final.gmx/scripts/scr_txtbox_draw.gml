// Add letters
if(counter <= string_length(lines[page]))
{
    counter += text_spd * (.03);
    output = string_copy(lines[page],0,ceil(counter));
}

// draw text
draw_set_font(fnt_text);
var font_size = font_get_size(fnt_text);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (image_xscale == 1)
    draw_text_ext(x+text_padding, y+text_padding, output, font_size+4, self.sprite_width-2*text_padding);
else    
    draw_text_ext(x+text_padding+sprite_width, y+text_padding, output, font_size+4, self.sprite_width-2*text_padding);

//draw the buttons
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(ceil(counter) == string_length(lines[page]) && page < page_end)
    instance_create(x+(sprite_width/2),y+(sprite_height-text_padding),but_cont);
else if(ceil(counter) == string_length(lines[page]) && page == page_end)
{
    if (type  == 0)
        instance_create(x+(sprite_width/2),y+(sprite_height-text_padding),but_cont);
    else if (type == 2)
        instance_create(x+(sprite_width/2),y+(sprite_height-text_padding-1),but_start);
    else if(type == 1)
    {
        instance_create(x+(sprite_width/3),y+(sprite_height-text_padding),but_yes);
        instance_create(x+(2*sprite_width/3),y+(sprite_height-text_padding),but_no);
    }
}
