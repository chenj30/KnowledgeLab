/// draw_text_outline(x,y,string,color,outline_color,outline_thickness)

// Draw outline
var stroke = argument5;
draw_set_color(argument4);
draw_text(argument0-stroke,argument1,argument2);
draw_text(argument0+stroke,argument1,argument2);
draw_text(argument0,argument1+stroke,argument2);
draw_text(argument0,argument1-stroke,argument2);

// Draw text
draw_set_color(argument3);
draw_text(argument0,argument1,argument2);
