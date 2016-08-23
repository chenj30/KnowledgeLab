if(global.pause) {exit;}
if(instance_exists(obj_txtbox_s)) {exit;}
switch(global.door)
{
    case 1:
    //go to science room
    room_goto(rm_science);
    break;
    
    case 2:
    //go to math room
    room_goto(rm_math);
    break;
    
    case 3:
    //go to reading room
    room_goto(rm_reading);
    break;
    
    default:
    break;
}
