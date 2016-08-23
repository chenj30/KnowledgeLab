#define scr_graph_controller_create
noAnimate();
gameOver = false;
levelComplete = false;
level = 0;
timer = 600;
if(room == rm_graph_boss)
    timer = 900;
bad_timer = 150;
for(var i = 0; i < 5; i++)
    bar[i] = 0;
flowHeight = 0;
graph_gameStart();
global.gameStart = false;

#define graph_gameStart
//randomly create bar heights (uniquely) (Also make total divisible by 2)
blockNum = level+2;
if(blockNum > 5) {blockNum = 5;}
if(room == rm_graph_boss) {blockNum = 5;}
image_index = blockNum-2;
do
{
    var total = 0;
    for(var i = 0; i < blockNum; i++)
    {
        bar[i] = irandom(8)+1;
        total += bar[i];
    }
} until ((total mod blockNum == 0) &&
  ((bar[0] != bar[1] && !bar[2] && !bar[3] && !bar[4]) ||
    (bar[0] != bar[1] && bar[1] != bar[2] && !bar[3] && !bar[4]) ||
    (bar[0] != bar[1] && bar[1] != bar[2] && bar[2] != bar[3] && !bar[4]) ||
    (bar[0] != bar[1] && bar[1] != bar[2] && bar[2] != bar[3] && bar[3] != bar[4])));
//get flow line height (unit = 64)
flowHeight = total/blockNum;
//create bar blocks
for(var j = 0; j < blockNum; j++)
{
    bar_block[j] = instance_create(x+64+(128*j), y-bar[j]*UNIT, obj_bar_block);
}