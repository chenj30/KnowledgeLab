if(global.pause || global.textbox) 
{
    self.visible = false;
    exit;
}
self.visible = true;
if(selection) {exit;}
if(position_meeting(mouse_x, mouse_y,self))
{
    image_index = 1;
    inside = true;
    if(instance_exists(obj_mainMenu))
    {
        obj_mainMenu.outside = false;
        obj_mainMenu.savedSelect = but_id;
    }
}
else
{
    image_index = 0
    inside = false;
}
