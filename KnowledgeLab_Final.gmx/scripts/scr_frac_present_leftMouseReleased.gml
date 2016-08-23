#define scr_frac_present_leftMouseReleased
if(grabbed)
{
    grabbed = false;
    depth++;
    if(global.musicOn)
        audio_play_sound(snd_beep,0,0);
    if(position_meeting(x,y,obj_frac_box) && obj_frac_box.presentsIn < obj_frac_box.presentLimit)
    {
        obj_frac_box.presentsIn++;
        if (weight_numr == 1 && weight_denom == 1)
        {
            obj_frac_box.prev_weight_numr = obj_frac_box.weightGiven_numr;
            obj_frac_box.prev_weight_denom = obj_frac_box.weightGiven_denom;
            obj_frac_box.weightGiven_numr += obj_frac_box.weightNeeded_denom;
            obj_frac_box.weightGiven_denom = obj_frac_box.weightNeeded_denom;
        }   
        else if (weight_denom == obj_frac_box.weightGiven_denom)
        {
            obj_frac_box.prev_weight_numr = obj_frac_box.weightGiven_numr;
            obj_frac_box.prev_weight_denom = obj_frac_box.weightGiven_denom;
            obj_frac_box.weightGiven_numr += weight_numr;
        }
        else
        {  
            obj_frac_box.prev_weight_numr = obj_frac_box.weightGiven_numr;
            obj_frac_box.prev_weight_denom = obj_frac_box.weightGiven_denom;
            obj_frac_box.weightGiven_numr = weight_numr*obj_frac_box.weightGiven_denom+obj_frac_box.weightGiven_numr*weight_denom;
            obj_frac_box.weightGiven_denom *= weight_denom;
        }   
        x = prev_x;
        y = prev_y;
        draw_time = 30;
    }
    else
    {
        x = prev_x;
        y = prev_y;
    }
}

#define gcd
/// gcd(a, b)
{
     var a, b;
     a = argument0; b = argument1;
     if (b == 0) return a;
     else return gcd(b, a mod b);
}

#define lcm
///lcm(a, b)
{
     var a, b;
     a = argument0; b = argument1;
     return a*b/gcd(a, b);
}