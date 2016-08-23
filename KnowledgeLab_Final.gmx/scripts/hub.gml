if(global.pause) {exit;}
with(obj_hubScreen)
{
    global.screen++;
    if(global.screen > 1) {global.screen = 0;}
}
