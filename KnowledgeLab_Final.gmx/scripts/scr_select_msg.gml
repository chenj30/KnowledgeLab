message_select = argument0;

//INTRODUCTION -done
messages[0] = "We've got trouble, "+global.protag+"! Remember that hard drive that was stored here in the labs? It contained the data and knowledge used by all the robot worlds. I found the hard drive empty this morning; we've got to get it back. I added my memory to the lab's computer to keep the labs running, but I can still function. Let's go! ";
messages[1] = "See that dial there? Each of its three gems can take you to three different worlds: Weather World, Birthday Bay, and Acting Avenue. Click on a gem to select the world then click it again to teleport there. ";

//MENTOR HUB WORLD BONUS LINES -done
messages[2] = "Howdy, "+global.protag+"! Nice work out there! ";
messages[3] = "Come on, "+global.protag+"! Lots to see and do out there. ";
messages[4] = "Let's go already! Click on the teleporter to select a world! Let's go let's go let's go! ";
messages[5] = "Okay, uh, a programmer walks into a bar. The bartender says, 'Good gosh, man, you're a mess!' And, uh... okay, I can't think of a punchline. Something about proper brackets. ";
messages[6] = "Keep it up, "+global.protag+"! You're really learning! ";
messages[7] = "Think everything through carefully! You got to understand the problem before you can solve it. ";
messages[8] = "Be sure to check your work! Even the smartest thinkers make mistakes. ";
messages[9] = "Keep that positive attitude. Anything is possible if you try! ";
messages[10] = "Remember, everyone makes mistakes. The important thing is to learn from them. ";

//**SCIENCE WORLD**
//UPON ENTERING SCIENCE WORLD - MENTOR -> SCIENCE ROBOT -done
messages[11] = "Wow, look at this place! What should we do? You pick. ";
messages[12] = "Reporter Daisy here. We are here live at the scene of the crime, and the sandbox appears to be in total chaos. ";
messages[13] = "A... sandbox? ";
messages[14] = "That's correct, a sandbox. It was used by the robots here to test the weather and water cycles, but with that knowledge gone, robots everywhere are asking, 'water they going to do?' Ha. Ha. Journalism humor. Back to you, Tom. ";

//GAME 1 INTRO DIALOUGE - GRAPHS - SCIENCE ROBOT -done
messages[15] = "This just in: graphs in dissarray! Those bars represent the water levels. Click and drag the top of each bar to change the water levels. The water must be returned to the proper level (the red line)! ";

//GAME 1 MENTOR HINTS -done
messages[16] = "You can only move the top section of each bar. ";
messages[17] = "Try to get each bar to be at the height of the red line. ";

//GAME 2 INTRO DIALOUGE - WATER CYCLE - SCIENCE ROBOT -> MENTOR -> MENTOR -done
messages[18] = "Breaking news! Everyone knows the water cycle; it's how water moves through, above, and on the earth. This diagram used to be referenced, but with the data gone, it appears to be completely empty... ";
messages[19] = "Okay, I'll go over it quickly. The water cycle is how water moves and changes phases as it travels from one place to another. Phases are different forms: in this case, solid, liquid, and gas. ";
messages[20] = "Sunlight heats water in the ocean. That water evaporates into the air. The vapor in the air then forms clouds through condensation. From the clouds, water can fall to the ground, or precipitate, as rain, snow, or hail. After that, water flows along the ground as surface run-off. Some of that run-off returns to the ocean to continue the cycle. ";
messages[21] = "I'll be helping you through the processes. Just match each step with the correct object! Click and drag the different steps of the cycle from the toolbar to where it belongs. Follow the steps shown on the bottom right-hand corner. "

//GAME 2 MENTOR ESSENTIAL LINES 
messages[22] = "Okay, first up is evaporation.";
messages[23] = "Second is condensation.";
messages[24] = "Next is precipitation.";
messages[25] = "Last is run off.";

//GAME 2 MENTOR POSITIIVE FEEDBACK
//SUN
messages[26] = "Nice! The sun has heated the water. It turns into vapor and goes into the air.";
//CLOUDS
messages[27] = "The water vapor has cooled turns back into a liquid, which forms clouds.";
//RAIN
messages[28] = "More and more water condensing makes it hard for the air to it all. Water falls in the form of rain, snow, or hail.";
//GROUND
messages[29] = "Once the water reaches the ground, it can travel back to oceans and lakes, or enter the earth to become ground water.";

//GAME 2 MENTOR NEGATIVE FEEDBACK
    //SUN TO CLOUD
    messages[30] = "I think the sun needs to be closer to the ocean in order to evaporate the water.";
    //SUN TO RAIN
    messages[31] = "Try putting the sun higher in the sky.";
    //SUN TO GROUND
    messages[32] = "The sun is far too low in the sky!"
    //CLOUD TO SUN
    messages[33] = "We want evaporation to happen on the left side of the sandbox. Try replacing the cloud with something else.";
    //CLOUD TO RAIN
    messages[34] = "With the cloud that close to the ground, there's no room for precipitation!";    
    //CLOUD TO GROUND
    messages[35] = "That cloud is too low! No room for precipitation!";
    //RAIN TO CLOUD
    messages[36] = "The rain is too high! It's not falling from anything at that height.";
    //RAIN TO SUN
    messages[37] = "We want precipitation on the right side and evaporation on the left. Try moving the rain.";
    //RAIN TO GROUND
    messages[38] = "That rain is a bit too low, it needs to fall on something!";
    //GROUND TO CLOUD
    messages[39] = "I'm not sure that ground can hover above the air...";
    //GROUND TO RAIN
    messages[40] = "Does that ground look a bit high to you?";
    //GROUND TO SUN
    messages[41] = "The ground is too darn high!";
    
//GAME 2 METOR HINTS - INGAME -done
messages[42] = "Drag around the elements to their correct place! The step you need to do is shown in the bottom right corner. ";
messages[43] = "Looks like you'll have to place the sun, cloud, rain and ground in the right places. Think it through carefully! ";

//BOSS 1 - ANTAGONIST -done
messages[44] = "My, my. "
messages[45] = "I expected someone to try and stop me, but I can't say I expected someone like you. I need these worlds in chaos to keep these robots from interfering, so I'm afraid we're at a bit of a crossroads. ";
messages[46] = "It looks like you don't have any trouble with these weather problems. Let's see if we can make them just a little bit harder. ";

//AFTER BOSS 1
//SCIENCE ROBOT BONUS LINES - INSIDE THE HUB WORLD - QUESTION PRECURSOR - ROBOT -> MENTOR 
messages[47] = "I'm here live with the bright young human that saved the day, and his... toaster? ";
messages[48] = "Mentor. ";
messages[49] = "Whatever. Human, tell the camera how you feel. Amazed? Heroic? ";
messages[50] = "- He feels just fine, thank you very much. ";
messages[51] = "Ah. Nothing more you'd like to add? Even for some data? ";
messages[52] = "Where in the world did you find that? ";
messages[53] = "A good reporter is always curious! Well? What do you say? ";

//SCIENCE ROBOT - AFTER FINISHING QUESTION
messages[54] = "What a scoop! ";

//SCIENCE ROBOT - BONUS LINES - POST QUESTION
messages[55] = "In my experience, cycle work in, well, cycles. Try to think of a way where the cycles would correctly repeat. ";
messages[56] = "Water can be a liquid, a solid, or a gas. One could say it flows like... well, water for one thing. ";

//**MATH WORLD**
//UPON ENTERING MATH WORLD - MATH ROBOT -done
messages[57] = "Ah, a human! ... A human? ";
messages[58] = "My goodness. Well, you certaintly came at the right time. This world is in quite a pickle! ";
messages[59] = "You see, we have a party. A birthday party to be exact. But now that our knowledge of math is gone, well, we can't throw a party for anyone! ";

//GAME 1 INTRO DIALOUGE - FRACTIONS - MATH ROBOT -done
messages[60] = "Ah, presents. Giving a gift is so comforting. So celebratory! Few treasures are as- ";
messages[61] = "Cut to the chase. ";
messages[62] = "Right. These boxes need to be filled in completely, but right now we only have parts, or fractions, of them complete. Please use your knowledge of fractions to fill them in. Click and drag the presents into the box and match the given fraction. ";

//GAME 1 MATH WORLD - FRACTIONS - MENTOR HINTS - INGAME -done
messages[63] = "Remember, if the numerator (number on top) equals the denominator (number on the bottom) after you add the fractions together, your result will always be one. ";
messages[64] = "Got two fractions with different demoninators? Find a common multiple between the two numbers! For instance, 1/3 + 2/5 is tricky. But 3 and 5 have a common multiple: 15! 1/3 turns into 5/15, and 2/5 turns into 6/15. 5 + 6 = 11, so the answer is 11/15. ";

//GAME 2 INTRO DIALOUGE - LONG DIVISION -done
messages[65] = "Ah, music. The rhythm of logic and the energy of waves. We have here a band for our party... though they have forgotten how to play music. I think your long division skills can help them, in this case. Click on the drum with the answer you think is correct. ";

//GAME 2 - FRACTION - MENTOR HINTS INGAME  -done
messages[66] = "Take your time. Long division requires a lot of remainders and moving numbers around. A mistake early in the problem can create a lot more problems later! ";
messages[67] = "Long division moves in this order: divide, multiply, subtract, bring down. ";

//BOSS 2 -done
messages[68] = ""+global.protag+". Why am I not surprised? Come to meddle in this world, too? ";
messages[69] = "That's what we should be asking! Can't you leave this nice party alone? ";
messages[70] = "I preferred it the way I left it, and I'll change it back after I defeat you! ";

//AFTER COMPLETING TWO WORLDS
messages[71] = "Yahoo! Two worlds down! We're going father and farther, "+global.protag+". Say, have you taken the time to talk to everyone? You'd be surprised what can happen. ";

//MATH ROBOT - BONUS LINES - PRECURSOR TO QUESTION
messages[72] = "Greetings! Thank you for restoring my world. This laboratory is fascinating. So much to see. ";
messages[73] = "I found some data while doing some math on the lab computer. If you would be so kind as to aid me with this puzzle, I will gladly give you the data. ";

//MATH ROBOT - BONUS LINES - POST QUESTION LINE
messages[74] = "Amazing! We robots clearly have much to learn from you humans. ";

//MATH ROBOT - BONUS LINES - AFTER QUESTION COMPLETION
messages[75] = "From food to moneym fractions are very handy. ";
messages[76] = "Long division can help us divide something like a cake equally - althought, I'm sure we'd all want a bigger piece! ";
messages[77] = "Mathematics are used in everything from house building to banking to space travel! Math has no limits! ";

//UPON ENTERING READING COMPREHENSION - READING ROBOT -> MENTOR -done
messages[78] = "Oh, what are you looking at? We've got no trouble here. No crisis at all. None. ";
messages[79] = "Sooo, no problems here? ";
messages[80] = "None at all! We certainly haven't forgotten our reading comprehension skills and are thus unable to put on our robot play, if that's what you're asking. ";
messages[81] = "Ugh, some people are just too proud to ask for help. Come on "+global.protag+", let's lend him a hand. ";

//GAME 1 INTRO DIALOUGE - STORY PROGRESSION - READING ROBOT -done
messages[82] = "Hmph! Didn't I say there wasn't a problem? I hate having to rely on others. In any case, these robots are acting a scene. Without their memories and reading abilities, we're not sure what happens next. Study your context clues and vocabulary carefully and help us make the right calls. Click on the right answer to the questions asked. ";

//GAME 1 - STORY PROGRESSION - MENTOR HINTS - INGAME -done
messages[83] = "Think of the stories you've heard. Even if there isn't always a pattern, there's cause and-effect, right? ";
messages[84] = "Logically, you can try to eliminate the least probably choices. What remains? ";

//GAME 2 INTRO DIALOUGE - EMOTIONS - MENTOR -done
messages[85] = "Gee, "+global.protag+", it's time I told you something. When I gave up my memory to keep the lab running, I lost my emotions. Maybe you could show me how to react and get them back. ";

//GAME 2 - EMOTIONS - MENTOR HINTS - INGAME -done
messages[86] = "Well, given the situations, you've got to pick the right emotion. Use context clues. ";
messages[87] = "Pay close attention to the scenes! You're going to have to select the correct emotion from those choices! ";

//READING COMPREHENSION ROBOT - BONUS LINES - PRECURSOR TO QUESTIONS
messages[88] = "Ah! The acting coach from before. Just the person I wanted to see. I came across some spare data. Solve this puzzle, and the data is yours. I have no use for it.";

//READING COMPREHENSION ROBOT - BONUS LINES - POST QUESTION
messages[89] = "Hmph. Job... well... done.";

//READING COMPREGENSION ROBOT - BONUS LINES - AFTER QUESTION IS COMPLETED
messages[90] = "I have nothing more to say to you. Begone!";

//BOSS 3 INTRO DIALOUGE - ANTAGONOST -> Mentor -done
messages[91] = "I HATE this acting guild! ";
messages[92] = "Um... why? ";
messages[93] = "They're such amateurs! Always forgetting their lines. No emotion in their performance. The line is not, 'Alas, poor Yorick! I knew him well'! The line refers to Horatio. Ugh... ";
messages[94] = "I'm, uh, sorry about that. I didn't know you were so passionate about the theater. ";
messages[95] = "What were we arguing about? Nevermind, I need to fight something. Let's fight. ";

//POST 3RD BOSS BATTLE
messages[96] = "Impossible. How could this be? I came so close to curing mself-sel-sel-sel-sel-";
messages[97] = "Whoa. What's that??";
messages[98] = "Look at it. When I caught this virus, I was cut off from the collective knowledge of our worlds. I stole the data form the lab hard drive in an attempt to cure myself.";
messages[99] = "You were just trying to get better? All this time?";
messages[100] = "... I thought with just a little more knowledge...";
messages[101] = "Well, it doesn't have to be this way. Come back to the labs with us, and we'll work together this time.";
messages[102] = "... Very well.";

//PRE FINAL BOSS - IN HUB WORLD - ANTAGONIST -> MENTOR -done
messages[103] = ""+global.antag+", I know a lot about math and science, but no so much about medicine! ";
messages[104] = "Not to worry. This infection can be battled with your wits. ";
messages[105] = "... ";
messages[106] = "Your mental sharpness? ";
messages[107] = "... ";
messages[108] = "... It means you can use your intelligence! ";
messages[109] = "Oh yeah! We have plenty of that! ";
messages[110] = "I'm doomed. ";
messages[111] = "Nonsense! "+global.protag+" can handle everything thrown at him! ";
messages[112] = "Do not take this virus lightly. It offers a greater challenge than all obstacles you have faced so far. This is your final battle! ";

//AFTER DEFEATING VIRUS
messages[113] = "YIPEE! You did it, "+global.protag+"! The data has been restored and the worlds are in harmony. You're a hero, "+global.protag+"!";
messages[114] = "And there is someone else who wishes to thank you."; //ANTAGONIST
messages[115] = "I would not be here if it were not for your kindness. I am set to make a full recovery. Thank you for...";
messages[116] = "For?";
messages[117] = "For being my friend.";


return messages[message_select];
 
