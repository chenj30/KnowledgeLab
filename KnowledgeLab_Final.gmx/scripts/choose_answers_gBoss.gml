question = argument0;

answers[0,0] = "He'll ruin his shoes.";
answers[0,1] = "He trips on his shoes laces."; //correct
answers[0,2] = "He will be more comfortable in his untied shoes.";
answers[0,3] = "He will walk barefoot.";

answers[1,0] = "He was scared of the book. ";
answers[1,1] = "Tyler's mom had told him to hide under his bed.";
answers[1,2] = "He wasn't scared. He just likes being under his bed.";
answers[1,3] = "The book he was reading was about the dangers of volcanos."; //correct

answers[2,0] = "She should call and ask her mom first.";
answers[2,1] = "She should invite her friends over first.";
answers[2,2] = "She should clean her room first."; //correct
answers[2,3] = "She should buy supplies first.";

returnarray[0] = answers[question,0]; 
returnarray[1] = answers[question,1]; 
returnarray[2] = answers[question,2]; 
returnarray[3] = answers[question,3]; 

return returnarray;
