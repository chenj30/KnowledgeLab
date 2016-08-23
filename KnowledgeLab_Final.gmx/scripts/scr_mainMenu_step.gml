// track if cursor is outside of all buttons
for (m = 0; m < 4; m++) 
{
    if(menu[m].id.inside) {break;}
    outside = true;
}

// get input
step = 0;
step -= keyboard_check_pressed(vk_up);
step += keyboard_check_pressed(vk_down);

if(abs(step) && optSelect == 5)
    optSelect = savedSelect;
else 
    optSelect += step; //move selection
if(optSelect == -1) {optSelect = 3;} //loop to bottom
if(optSelect == 4) {optSelect = 0;} //loop to top
enter = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space),0);
if (enter) // selection
{
    switch(optSelect)
    {
        case 0: 
        newGame();
        break;
    
        case 1:
        loadGame();
        break;
    
        case 2:
        settings();
        break;
    
        case 3:
        quit();
        break;
    
        default: 
        break;
    }
}
