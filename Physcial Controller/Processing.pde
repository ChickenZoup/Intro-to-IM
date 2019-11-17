/* Lucy Choi Ji Soo
Assignment- Physcial controller

Turning the potentiometer changes the color of the ellipses.
As you twist and click the screen, the rectangles change color and grow in size.
*/

import processing.serial.*;
Serial myPort;
float mouseVal; //replaces mouseX
int sensorVal; //size of squares

int data[];
float hue=0;

float x=0;
float y=100;

int MAX_HUE = 360;
int MAX_SATURATION= 100;
int MAX_BRIGHTNESS =100;
int MAX_OPACITY= 100;

void setup() { 
  size(1200, 400);
  background(0);
  colorMode(HSB, MAX_HUE, MAX_SATURATION, MAX_BRIGHTNESS, MAX_OPACITY); 
  frameRate(20);
  smooth();

  x=width/2;
  y=height/2;

  printArray(Serial.list());
  String portName = Serial.list()[1];
  println(portName);
  myPort = new Serial(this, portName, 9600);
  myPort.clear();
  myPort.bufferUntil('\n');


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
  background(0); //resets background

  if (mousePressed == true) {

    pushMatrix();
    hue= map(mouseVal, 0, width, 0, MAX_HUE); 
    strokeWeight(3);
    stroke(hue/10, 100, 100, 100); //changing the color of the strokes 
    noFill();
    rect(random(0, width), random(0, height), sensorVal, sensorVal);
    popMatrix();
  }
  //sets the color once
  hue= map(mouseVal, 0, width, 0, 360); 
  
  for (int i=0; i<data.length; i++) {
    fill(hue, 100, 100, 100);
    noStroke();
    //size of the cirlces are relative to the data
    ellipse(random(0, width), random(0, 400), data[i], data[i]);
  }
}


void serialEvent (Serial myPort) {
  String s=myPort.readStringUntil('\n');
  s=trim(s);
  if (s!=null) {
    mouseVal= (int)map(int(s), 0, 1023, 0, width);
    //size of the rectangle
    sensorVal= (int)map(int(s), 0, 1023, 1, 50);
  }
  myPort.write('0'); //handshake
}
