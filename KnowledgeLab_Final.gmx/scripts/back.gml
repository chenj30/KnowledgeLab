/// Go back
if(clicked)
{
    clicked = false;
    if(room == rm_science || room == rm_math || room == rm_reading)
        room_goto(rm_hub);
    else if(room == rm_graph || room == rm_cycle || room == rm_graph_boss || room == rm_cycle_boss)
        room_goto(rm_science);
    else if(room == rm_fractions || room == rm_division || room == rm_fractions_boss || room == rm_division_boss)
        room_goto(rm_math);
    else if(room == rm_context || room == rm_emotions || room == rm_context_boss || room == rm_emotions_boss)
        room_goto(rm_reading);
    else
        room_goto(global.prev_rm);
}
