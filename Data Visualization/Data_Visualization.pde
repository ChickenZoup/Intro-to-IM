/* Lucy 

Week 11 Assignment

*/


int data[];
float hue=0;

float x=0;
float y=100;

void setup() { 
  size(1200, 400);
  background(0);
  colorMode(HSB, 360, 100, 100, 100); //setting max range of red, green and blue hue
  frameRate(20);
  smooth();

  x=width/2;
  y=height/2;
// code taken from Aaron's example

  // The text from the file is loaded into an array. 
  String stuff[] = loadStrings("IM.csv");
  // This array has one element because the file only has one line. 
  println(stuff.length);
  // Convert String into an array of integers using ',' as a delimiter
  // string array is returned, which we cast to an int array
  data = int( split(stuff[0], ',' ) );
  // print out the array of data
  printArray(data);
  noStroke();
}


void draw() {

  if (mousePressed == true) {

    background(0); //resets background
    hue= map(mouseX, 0, width, 0, 100); 

    for (int i=0; i<data.length; i++) {
      pushMatrix();
      strokeWeight(2);
      stroke(hue, 100, 100, 100);
      noFill();
      //randomly setting the coordinates of rectangles
      //the size of the rectangles are relative to the data
      rect(random(0, 1150), random(0, 400), data[i]*random(1,5), data[i]*random(1,5));
      popMatrix();
    }
  } else {
    background(0);

    hue= map(mouseX, 0, width, 0, 360);

    for (int i=0; i<data.length; i++) {
      fill(hue, 100, 100, 100);
      noStroke();
      //size of the cirlces are relative to the data
      ellipse(random(0, 1150), random(0, 400), data[i], data[i]);
    }
  }
}
