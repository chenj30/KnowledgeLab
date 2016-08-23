if(place_empty(x,y))
    occupied = false;
else if(place_meeting(x,y,parent_icon))
{
    var icon = instance_place(x,y,parent_icon);
    if(icon.iconID == areaID && !icon.grabbed)
    {
        switch(icon.iconID)
        {
            case 0:
            icon.sprite_index = spr_sunObj_a;
            break;
            
            case 1:
            icon.sprite_index = spr_cloudObj_a;
            break;
            
            case 2:
            icon.sprite_index = spr_rainObj_a;
            break;
            
            case 3:
            icon.sprite_index = spr_landObj_a;
            break;
            
            default:
            break;
        }
        icon.placed = true;
    }
}
