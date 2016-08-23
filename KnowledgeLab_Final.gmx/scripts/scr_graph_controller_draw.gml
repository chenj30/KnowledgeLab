if(global.pause) {exit;}
if(!global.gameStart) {exit;}
//draw the bars
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(.6);
for(var i = 0; i < blockNum; i++)
{
    draw_rectangle_colour(x+64+(128*i),y,x+64+(128*i)+128,y-((bar[i]-1)*UNIT),
    c_water,c_water,c_water,c_water,false);
}
draw_set_alpha(1);
//draw grid
draw_sprite(spr_graph_grid,0,x,y);
//draw flowLine
draw_sprite(spr_graph_flow_line,0,x,y-(flowHeight*UNIT));
//draw timer
draw_rectangle(obj_gTimer.x,obj_gTimer.y,obj_gTimer.x+128,obj_gTimer.y+48,true);
draw_set_colour(c_black);
draw_set_font(fnt_ui);
draw_text(obj_gTimer.x+16,obj_gTimer.y+16,string_format(timer/30,2,0)+" sec left");
//draw level progress 
draw_text(obj_gTimer.x,obj_gTimer.y+64,"Water levels#balanced: " + string(level));
