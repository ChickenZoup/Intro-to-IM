### Physical Controller

For this assignment, we learned how to connect Arduino to Processing and vice versa through serial communication.
The codes and logistics weren't too intuitive for me, so I had trouble figuring them out.

Initially I was going to use a swtich and connect it to my OOP icecream game, but it seemed quite boring so I decided
to reuse my Data Visualization code. I replaced the mouseX to mouseVal which was mapped from the values of the potentiometer.

(The behavior and instructions are written in Processing.pde.

One thing I should remember is that Serial.write gives processing numerical values while Serial.println gives specific characters.
When using Serial.println, the strings should be converted to integers for processing to read.

I had written both Serial.write and Serial.println in my arduino code which got me stuck on it for hours.
