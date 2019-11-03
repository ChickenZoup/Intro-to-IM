### Icecream Stacking Game

Brief: Use Object Oriented Programming to make computer artwork or a game. 

Concept: The player has to stack each scoop of the icecream within an acceptable range to play again. 

Process and problems:

I used the example of a bouncing ball as a basic step to start my coding. As a coding newbie, it was a challenging
assignment but once I got my head around it, it was so much easier than hardcoding; I didn't have to remind myself which part
of the coding does what to the canvas because I had set the variable names precisely rather than ambiguously labelling them 
as i or foo. Also, it was so much more comfortable when I had to debug because I only had to change some of the values and 
variables within the class instead of changing it manually throughout the coding. 

Some problems I had encountered were assigning each of the icecream scoop a different color. Initially, I had made an array
of colors and every time a click increments, the color in the array would increment too. However, all 5 icecream scoops changed
color everytime the canvas was clicked. Instead, I made 5 different constructors for each of the icecream of different color so
that they change color individually and not as a whole. 

Also, I couldn't reset the game after the player had won. Everytime I tried to reset, the icecream scoops would not move
and just freeze on screen. To solve this problem, I had to reinitialize the xSpeed to random(1,4) because I noticed that 
the problem was because of xSpeed that had been assigned as 0 when the mouse was clicked. 

