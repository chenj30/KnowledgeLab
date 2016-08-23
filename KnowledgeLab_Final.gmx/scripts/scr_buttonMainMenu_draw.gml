// set align to CENTER
draw_set_halign(fa_center);
draw_set_valign(fa_center);
// draw icon
if(inside)
{
    draw_sprite(global.icon, 0, view_wview[0]/2-128, 416 + (but_id * obj_mainMenu.space));
    obj_mainMenu.optSelect = 5;
}   
    
