if(str == ""){
    message = scr_select_msg(i);
    //destroy old list
    ds_list_destroy(start);
    //keep track of starting line
    start = ds_list_create();
    ds_list_add(start, 0);

    //keep track of last space & current position
    count = 0;
    last_space = 0;
    line = 0;
}
