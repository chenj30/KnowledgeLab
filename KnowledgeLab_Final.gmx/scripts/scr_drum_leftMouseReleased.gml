if (clicked)
{
    clicked = false;
    obj_division_bar.given_ans = obj_division_bar.numbers[drumID];
    if(global.musicOn)
        audio_play_sound(snd_drum,0,0);
}
