#define scr_cycle_icon_leftMouseReleased
if(grabbed)
{
    grabbed = false;
    depth++;
    if(position_meeting(mouse_x,mouse_y,parent_area))
    {
        var area = instance_position(mouse_x,mouse_y,parent_area);
        if(area.areaID == iconID && iconID == obj_cycle_toolbox.cycleStep)
        {
            if(global.musicOn)
                audio_play_sound(snd_right,0,0);
            x = area.x;
            y = area.y;
            placed = true;
        }
        else
        {
            revertIcon();
            if(global.musicOn)
                audio_play_sound(snd_wrong,0,0);
            x = obj_cycle_toolbox.x+obj_cycle_toolbox.sprite_width/2;
            y = obj_cycle_toolbox.y+96+iconID*160;
            if (area.areaID != iconID)
            {
                show_message("This doesn't seem to belong here.");
            }
            else if (iconID != obj_cycle_toolbox.cycleStep)
            {
                show_message("This doesn't seem to be the right step.");
            }
            noAnimate();
            placed = false;
        }
    }
    else
    {
        revertIcon();
        x = obj_cycle_toolbox.x+obj_cycle_toolbox.sprite_width/2;
        y = obj_cycle_toolbox.y+96+iconID*160;
        noAnimate();
        placed = false;
    }

}

#define revertIcon
switch(iconID)
{
    case 0:
    sprite_index = spr_sunIcon;
    break;
    
    case 1:
    sprite_index = spr_cloudIcon;
    break;    
    
    case 2:
    sprite_index = spr_rainIcon;
    break;
    
    case 3:
    sprite_index = spr_landIcon;
    break;
    
    default:
    break;
}