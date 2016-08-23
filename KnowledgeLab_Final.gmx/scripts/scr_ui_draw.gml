#define scr_ui_draw
if(global.pause) {exit;}
if(instance_exists(obj_NOui)) {exit;}
draw_progress_bar(UIBAR_X,UIBAR_Y);

#define draw_progress_bar
/// Size of UI bar is 192x48
// Alignments
draw_set_halign(fa_center);
draw_set_valign(fa_center);
// draw UI
draw_sprite(spr_ui, 0, argument0, argument1);
// draw Progress bar
if (global.progress < 0)
    global.progress = 0;
if (global.progress > MEMORY)
    draw_rectangle_colour(argument0, argument1, argument0+192, argument1+48,
      c_uiBar,c_uiBar,c_uiBar,c_uiBar,false);
else
    draw_rectangle_colour(argument0, argument1, argument0+192*(global.progress/MEMORY), argument1+48,
      c_uiBar,c_uiBar,c_uiBar,c_uiBar,false);
// write percentage
draw_set_colour(c_white);
draw_set_font(fnt_ui);
draw_text(argument0+96,argument1+24, string(global.progress) + " GB/" + string(MEMORY) + " GB");