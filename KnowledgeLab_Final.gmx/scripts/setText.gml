///setText("string",type)
with(obj_txtbox_s)
{
    text_str = argument0;
    text_len = string_length(text_str);
    var i = 0;
    var j = 0;
    var s = 0;
    var c = 0;
    while (i < text_len)
    {
        if(string_char_at(text_str,i) == ' ')
            space_pos = i;
        lines[j] = string_copy(text_str,s,c);
        if(string_height_ext(lines[j], font_get_size(fnt_text)+4, sprite_height-text_padding) >= sprite_height)
        {
            lines[j] = string_copy(text_str,s,space_pos-s);
            s = space_pos;
            c = 0;
            j++;
        }
        i++;
        c++;
    }
    page_end = j;
    type = argument1;
}
