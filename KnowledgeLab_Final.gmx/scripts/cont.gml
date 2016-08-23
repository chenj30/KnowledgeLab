if(global.pause) {exit;}
if(clicked)
{
    with(obj_txtbox_s)
    {
        if (page == page_end) {instance_destroy();}
        page++;
        counter = 0;
    }
    instance_destroy();
}
