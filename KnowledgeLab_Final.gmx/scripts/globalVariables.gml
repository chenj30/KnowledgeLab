// Global variables
global.icon = spr_menuIcon;
global.prev_rm = rm_mainMenu;
global.musicOn = true;
global.pause = false;
global.textbox = false;
global.gameStart = false;
global.fBossDefeat = false;
global.postGame = false;
global.progress = 0;
global.door = 0;
global.screen = 0;
for(var c = 0; c < 3; c++)
    for(var r = 0; r < 2; r++)
    {
        global.minigames[c,r] = false;
        global.perfects[c,r] = false;
    }
randomize();
global.beginGame = true;
global.enterScience = false;
global.enterMath = false;
global.enterReading = false;
global.protag = "Billy";
global.antag = "Rick";
