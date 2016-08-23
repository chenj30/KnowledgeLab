if(global.pause || global.textbox) {exit;}

switch(global.screen)
{    
    case 0:
    noAnimate()
    sprite_index = spr_hubScreen_D;
    image_index = global.door;
    break;
    
    case 1:
    sprite_index = spr_hubScreen_C;
    break;
    
    default:
    break;    
}
