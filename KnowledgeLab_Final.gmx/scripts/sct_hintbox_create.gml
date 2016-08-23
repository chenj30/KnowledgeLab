//keep track of starting line
start = ds_list_create();
ds_list_add(start, 0);

//keep track of last space & current position
count = 0;
last_space = 0;
line = 0;

//set the message
str = "";

//dimensions of textbox
width = 350;
height = 120;
padding = 8;

//variables to change
i = 0;
alarm[0] = 150;
