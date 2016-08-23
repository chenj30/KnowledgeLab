#define scr_npc_step
switch(npcID)
{
    case 0:
    hubNPC_science();
    break;
    
    case 1:
    hubNPC_math();
    break;
    
    case 2:
    hubNPC_reading();
    break;
    
    default:
    break;
}

#define hubNPC_science
if(obj_ui.scienceComplete) {obj_npcS.visible = true;}
else {obj_npcS.visible = false;}

#define hubNPC_math
if(obj_ui.mathComplete) {obj_npcM.visible = true;}
else {obj_npcM.visible = false;}

#define hubNPC_reading
if(obj_ui.readingComplete) {obj_npcR.visible = true;}
else {obj_npcR.visible = false;}
#define hubNPC_mentor
if(global.pause || global.textbox)
{
    alarm[0] = 60;
    exit;
}
#define hubNPC_antag
if(obj_ui.scienceComplete && obj_ui.mathComplete && obj_ui.readingComplete) 
    {visible = true;}
else 
    {visible = false;}