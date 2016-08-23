if (global.pause) {exit;}
if(obj_cycle_toolbox.gameOver) {exit;}
if(!global.gameStart) {exit;}
if(placed) {exit;}
grabbed = true;
switch(iconID)
{
    case 0:
    sprite_index = spr_sunObj;
    break;
    
    case 1:
    sprite_index = spr_cloudObj;
    break;    
    
    case 2:
    sprite_index = spr_rainObj;
    break;
    
    case 3:
    sprite_index = spr_landObj;
    break;
    
    default:
    break;
}
prev_x = x;
prev_y = y;
prev_area = instance_position(x,y,parent_area);
depth--;
