if (clicked)
{
    clicked = false;
if(global.musicOn)
{
    global.musicOn = false;
    sprite_index = spr_music_off;
    audio_pause_all();
}
else
{
    global.musicOn = true;
    sprite_index = spr_music_on;
    audio_resume_all();
}
}       
