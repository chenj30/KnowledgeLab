//background
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//draw box
draw_sprite(spr_hintbox, 0, x, y);

//set text color white
draw_set_color(c_navy);
draw_set_font(fnt);

//check if the string has gone past the width [/n]
if(string_width(str) > width-padding-padding){
    //remove the space and replace it with a line break
    message = string_delete(message, last_space, 1);
    message = string_insert("#", message, last_space);
    ds_list_add(start, last_space+1);
}

//make sure we have not reached end of message
if(count < string_length(message)){
    //if at space set last space var
    if(string_char_at(message, count-1) == " "){
        last_space = count-1;
    }
    if(string_char_at(message, count) == " "){
        last_space = count;
    }
    //Increment count
    count += 2;
}

//move up a line if past bottom
if(string_height(str) > height-padding){
    line += 1;
}

//grab string
str = string_copy(message, ds_list_find_value(start,line), count - ds_list_find_value(start, line));

//draw string
draw_text(x+padding,y+padding,str);
