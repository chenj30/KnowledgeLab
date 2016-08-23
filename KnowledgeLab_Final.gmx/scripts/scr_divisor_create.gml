digit[0] = irandom(9);
if(obj_division_bar.level > 2)
{
    digit[1] = 1;
}
else
{
    digit[1] = 0;
}
if(room == rm_division_boss)
    digit[1] = choose(0,1);
number = (10*digit[1])+(digit[0]);
