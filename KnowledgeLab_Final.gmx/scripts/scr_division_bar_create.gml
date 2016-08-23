#define scr_division_bar_create
gameOver = false;
global.gameStart = false;
level = 0;
bad_timer = 210;
noAnimate();
gameRestartDivision();
drumControl();

#define gameRestartDivision
do
{
    with(obj_dividend) {scr_dividend_create();}
    with(obj_divisor) {scr_divisor_create();}
} until (obj_divisor.number > 1 && obj_divisor.number < 13 && obj_dividend.number mod obj_divisor.number < 9);
operation = 0;
current_ans = obj_dividend.digit[2] div obj_divisor.number;
bring_down = 0;
box_selected = instance_create(obj_divi_box_D_s.x,obj_divi_box_D_s.y,obj_div_box_D);
digit = 2;
given_ans = -1;
ans_pos = -1;
solved = false;

#define drumControl
prev_pos = ans_pos;
do 
{
    ans_pos = irandom(3);
} until (ans_pos != prev_pos);
for( i = 0; i < 4; i++)
{
    if (i == ans_pos)
        numbers[i] = current_ans;
    else
    {
        unique = true;
        do
        {
            numbers[i] = current_ans + (irandom_range(-3,3));
            unique = true;
            if(numbers[i] == current_ans)
                unique = false;
            if(numbers[i] < 0)
                unique = false;
            if((operation == 0 || operation == 3) && numbers[i] > 9)
                unique = false;
            for( j = 0; j < i; j++)
            {
                if(numbers[i] == numbers[j])
                    unique = false
            }    
        } until(unique);
    }              
}