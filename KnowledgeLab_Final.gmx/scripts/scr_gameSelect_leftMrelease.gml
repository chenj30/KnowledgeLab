///Entering Science Minigames
if(clicked)
{
    clicked = false;
    if(!global.minigames[worldNum,0])
        room_goto(game1);
    else if(!global.minigames[worldNum,1])
        room_goto(game2);
    else if(!worldComplete)
        room_goto(gameB);
    else
        selection = true;
}
