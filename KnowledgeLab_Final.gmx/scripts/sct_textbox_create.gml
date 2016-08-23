//keep track of starting line
start = ds_list_create();
ds_list_add(start, 0);

//keep track of last space & current position
count = 0;
last_space = 0;
line = 0;

//set the message
str = "";
global.textbox = true;

//dimensions of textbox
width = 540;
height = 160;
padding = 8;

//variables to change
i = 0;

if(global.musicOn)
    audio_play_sound(snd_text,0,0);
