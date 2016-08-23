#define scr_frac_box_create
gameOver = false;
global.gameStart = false;
fracGameRestart()
prev_numr = weightNeeded_numr;
prev_denom = weightNeeded_denom;
timer = 600;
bad_timer = 165;
level = 0;
prev_weight_numr = 0;
prev_weight_denom = 1;

#define fracGameRestart
do
{
    weightNeeded_numr = irandom(7)+1;
    weightNeeded_denom = irandom(3)+1;
}until (weightNeeded_numr != 1 &&weightNeeded_denom != 5 && weightNeeded_denom != 7 && 
  weightNeeded_numr/weightNeeded_denom <= 2);
var gcd_num = gcd(weightNeeded_numr, weightNeeded_denom);
if (gcd_num > 1)
{
    weightNeeded_numr /= gcd_num;
    weightNeeded_denom /= gcd_num;
}
weightGiven_numr = 0;
weightGiven_denom = 1;
if (weightNeeded_numr/weightNeeded_denom == 2)
    presentLimit = 2;
else if(weightNeeded_numr/weightNeeded_denom > 1)
    presentLimit = 1 + weightNeeded_numr mod weightNeeded_denom;
else if (weightNeeded_numr/weightNeeded_denom == 1)
    presentLimit = 1;
else
    presentLimit = weightNeeded_numr mod weightNeeded_denom;
    
presentsIn = 0;