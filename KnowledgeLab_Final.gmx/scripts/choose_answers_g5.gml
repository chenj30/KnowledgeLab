question = argument0;

answers[0,0] = "The robot will leave the store.";
answers[0,1] = "The robot will purchase the animal."; //correct
answers[0,2] = "The robot will look for another animal.";
answers[0,3] = "The robot will yell angrily.";

answers[1,0] = "The robot will run away.";
answers[1,1] = "The robot will eat the flowers.";
answers[1,2] = "The robot will throw the flowers at the other robot.";
answers[1,3] = "The robot will give the flowers to the other robot."; //correct

answers[2,0] = "The robot will drop the pan.";
answers[2,1] = "The robot will have to throw out his food.";
answers[2,2] = "The robot will eat the food."; //correct
answers[2,3] = "The robot will walk outside.";

returnarray[0] = answers[question,0]; 
returnarray[1] = answers[question,1]; 
returnarray[2] = answers[question,2]; 
returnarray[3] = answers[question,3]; 

return returnarray;
