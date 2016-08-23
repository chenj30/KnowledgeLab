if(global.pause || global.textbox) {exit;}
if(instance_exists(obj_txtbox_s)) {exit;}
if(clicked)
{
    clicked = false;
    if((mouse_x > self.x) && (mouse_x < self.x+(sprite_width/3)))
    {
        if(global.door == 1) 
            room_goto(rm_science);
        else
        {
            if(global.musicOn)
                audio_play_sound(snd_hubselector,0,0);
            global.door = 1;
        }
    }
    else if((mouse_x >= self.x+(sprite_width/3)) && (mouse_x < self.x+(2*sprite_width/3)))
    {
        if(global.door == 2)
            room_goto(rm_math);
        else
        {
            if(global.musicOn)
                audio_play_sound(snd_hubselector,0,0);
            global.door = 2;
        }
    }
    else if((mouse_x >= self.x+(2*sprite_width/3)) && (mouse_x < self.x+(sprite_width)))
    {
        if(global.door == 3)
            room_goto(rm_reading);
        else
        {
            if(global.musicOn)
                audio_play_sound(snd_hubselector,0,0);
            global.door = 3;
        }
    }
    else
        global.door = 0;
}
