if(global.pause) {exit;}
if(instance_exists(obj_txtbox_s)) {exit;}
if(global.screen == 3) 
    if(!position_meeting(mouse_x,mouse_y,but_hub)) 
        {room_goto(rm_hubGame);}
