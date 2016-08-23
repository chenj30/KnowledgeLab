#define scr_pauseMenu_step
if(global.pause && !(room == rm_mainMenu || room == rm_settings))
{
    // input
    pStep = 0;
    pStep -= keyboard_check_pressed(vk_up);
    pStep += keyboard_check_pressed(vk_down);
    pauseSelect += pStep; //move selection
    if(pauseSelect == -1) {pauseSelect = 3;} //loop to bottom
    if(pauseSelect == 4) {pauseSelect = 0;} //loop to top
    
    pEnter = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space),0);
    if (pEnter) // selection
    {
        pauseSwitch(pauseSelect);
    }
}

#define pauseSwitch
switch(argument0)
{
    case 0: 
    global.pause = false;
    break;

    case 1:
    saveGame()
    break;

    case 2:
    global.pause = false;
    clicked = true;
    settings();
    break;
    
    case 3:
    global.pause = false;
    room_goto(rm_mainMenu);
    break;
    
    default: 
    break;
}