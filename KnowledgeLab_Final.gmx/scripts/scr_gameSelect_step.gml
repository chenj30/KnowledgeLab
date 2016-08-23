if(selection)
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
