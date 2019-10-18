#self portrait assignment


PShape s;
PShape t;
float hue=0;
float speed= 5;
float y=0;
float x;

//snowfall coding taken from http://solemone.de/demos/snow-effect-processing/
int quantity = 300;
float [] xPosition = new float[quantity];
float [] yPosition = new float[quantity];
int [] flakeSize = new int[quantity];
int [] direction = new int[quantity];
int minFlakeSize = 1;
int maxFlakeSize = 5;



void setup() {
  size(800, 800);
  background(255);
  colorMode(RGB, 255, 255, 255);
  frameRate(30);
  smooth();

  //snowfall coding taken from http://solemone.de/demos/snow-effect-processing/
  for (int i = 0; i < quantity; i++) {
    flakeSize[i] = round(random(minFlakeSize, maxFlakeSize));
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
    direction[i] = round(random(0, 1));
  }


  //left fringe

  s = createShape();
  s.beginShape();
  s.fill(52, 25, 2);
  s.noStroke();
  s.vertex(0, 0);
  s.vertex(0, 50);
  s.vertex(70, 50);
  s.vertex(90, 0);

  s.endShape(CLOSE);

  //right fringe

  t = createShape();
  t.beginShape();
  t.fill(52, 25, 2);
  t.noStroke();
  t.vertex(800, 0);
  t.vertex(800, 50);
  t.vertex(730, 50);
  t.vertex(710, 0);

  t.endShape(CLOSE);
}

void draw() {

  //background color changes as mouse moves
  hue= map(mouseX, 0, width, 0, 255);
  background(hue, 100, 100, 100);

  //frame

  fill(255);
  stroke(233, 185, 120);
  strokeWeight(20);
  rect(200, 89, 400, 620);


  //hair
  noStroke();
  fill(52, 25, 2);
  rect(252, 300, 296, 400);

  //ears
  noStroke();
  fill(255, 212, 173);
  ellipse(250, height/2, 55, 70);
  ellipse(550, height/2, 55, 70);
  //earring
  fill(240);
  ellipse(570, 392, 10, 10);

  //shirt
  fill(3, 40, 125);
  arc(400, 700, 296, 280, radians(180), radians(360));

  //neck
  fill(255, 212, 173);
  rect(372, 520, 60, 70);
  arc(402, 583, 61, 55, radians(0), radians(180), CHORD);


  //face
  fill(255, 219, 178);
  //ellipse(width/2,height/2, 300,350);
  rect(260, 260, 280, 290, 0, 0, 150, 150);


  //earring
  noFill();
  strokeWeight(3);
  stroke(254, 227, 15);
  arc(245, 437, 15, 15, radians(0), radians(280));
  arc(557, 435, 15, 15, radians(270), radians(540));

  //nose
  stroke(240, 172, 117);
  arc(400, 450, 30, 45, radians(220), radians(320));


  //mouth
  fill(243, 125, 117);
  stroke(0);
  strokeWeight(2);
  arc(400, 490, 65, 55, radians(0), radians(180), CHORD);
  noStroke();
  fill(255);
  rect(370, 492, 60, 8, 0, 0, 5, 5);

  //eyebrow
  noFill();
  stroke(0);
  strokeWeight(5);
  arc(470, 355, 85, 40, radians(220), radians(320));
  arc(329, 355, 85, 40, radians(220), radians(320));


  //fringe
  noStroke();
  fill(52, 25, 2);
  arc(400, 300, 296, 290, radians(180), radians(360));
  rect(345, 300, 110, 50);

  //glasses
  noFill();
  strokeWeight(2);
  stroke(0);
  ellipse(329, 400, 100, 100);
  ellipse(470, 400, 100, 100);
  line(282, 380, 250, 360);
  line(518, 380, 550, 360);
  strokeWeight(5);
  stroke(255, 208, 52);
  arc(400, 400, 48, 40, radians(220), radians(320));

  //eye arc
  stroke(0);
  strokeWeight(5);
  arc(329, 402, 55, 40, radians(220), radians(320));
  arc(470, 402, 55, 40, radians(220), radians(320));


  //eyes
  fill(0);
  ellipse(330, 395, 20, 25);
  ellipse(470, 395, 20, 25);

  //moving fringe parts to the right place
  translate(255, 299);
  shape(s);

  translate(-510, 0);
  shape(t);

  translate(265, -287);
  fill(208, 239, 255, 100);
  noStroke();
  rect(200, 89, 380, 600);


  noStroke();
  fill(255);

  //snowfall coding taken from http://solemone.de/demos/snow-effect-processing/
  for (int i = 0; i < xPosition.length; i++) {

    ellipse(xPosition[i], yPosition[i], flakeSize[i], flakeSize[i]);

    if (direction[i] == 0) {
      xPosition[i] += map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    } else {
      xPosition[i] -= map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    }

    yPosition[i] += flakeSize[i] + direction[i]; 

    if (xPosition[i] > width + flakeSize[i] || xPosition[i] < -flakeSize[i] || yPosition[i] > height + flakeSize[i]) {
      xPosition[i] = random(0, width);
      yPosition[i] = -flakeSize[i];
    }
  }
}
