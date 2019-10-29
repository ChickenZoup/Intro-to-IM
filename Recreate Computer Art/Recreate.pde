int i;
float t;
float x=0;


void setup() {
  size(710, 450);
  background(255);


  for (i=0; i<10; i= i+2) {
    line(0, i, width, i);
  }

  pushMatrix();
  translate(0, 10);
  for (i=0; i<40; i= i+3) {
    line(0, i, 90, i);
  } 
  popMatrix();

  for (i=0; i<105; i= i+15) {
    line(i, 50, i, 450);
  }

  //horizontal 2
  pushMatrix();
  translate(0, 150);
  for (int i=0; i<49; i=i+7) {
    fill(255);
    rect(0, i, 90, 7);
  }
  popMatrix();

  pushMatrix();
  translate(103, -40);
  for (i=0; i<154; i= i+11) {
    line(i, 50, i, 490);
  }
  popMatrix();

  //horizontal 3
  pushMatrix();
  translate(90, 85);
  for (int i=0; i<28; i=i+4) {
    fill(255);
    rect(0, i, 79, 4);
  }
  popMatrix();

  //vertical 4
  pushMatrix();
  translate(246, -20);
  for (i=0; i<48; i= i+8) {
    line(i, 50, i, 450);
  }
  popMatrix();

  //horizontal4
  pushMatrix();
  translate(90, 200);
  for (int i=0; i<56; i=i+8) {
    fill(255);
    rect(0, i, width, 8);
  }
  popMatrix();

  //horizontal5
  pushMatrix();
  translate(169, 35);
  for (int i=0; i<24; i=i+3) {
    fill(255);
    rect(0, i, width, 3);
  }
  popMatrix();

  //horizontal 6
  pushMatrix();
  translate(169, 115);
  for (int i=0; i<28; i=i+4) {
    fill(255);
    rect(0, i, width, 4);
  }
  popMatrix();

  //horizontal8
  pushMatrix();
  translate(246, 11);
  for (int i=0; i<24; i=i+3) {
    fill(255);
    rect(0, i, width, 3);
  }
  popMatrix();

  //horizontal9
  pushMatrix();
  translate(246, 60);
  for (int i=0; i<24; i=i+3) {
    fill(255);
    rect(0, i, width, 3);
  }
  popMatrix();

  //vertical 5
  pushMatrix();
  translate(286, 0);
  for (int i=0; i<40; i=i+5) {
    fill(255);
    rect(i, 0, 5, 8);
  }
  for (int i=0; i<40; i=i+5) {
    fill(255);
    rect(i, 35, 5, 109);
  }

  for (int i=0; i<40; i=i+5) {
    fill(255);
    rect(i, 256, 5, 68);
  }

  for (int i=0; i<40; i=i+5) {
    fill(255);
    rect(i+40, 35, 5, 24);
  }

  for (int i=0; i<40; i=i+5) {
    fill(255);
    rect(i+40, 256, 5, 68);
  }

  for (int i=0; i<40; i=i+5) {
    fill(255);
    rect(i-40, 0, 5, 8);
  }

  //horizontal 3 extended
  for (int i=0; i<28; i=i+4) {
    fill(255);
    rect(40, i+86, width, 4);
  }
  popMatrix();

  //horizontal 2 extended
  pushMatrix();
  translate(286, 144);
  for (int i=0; i<56; i=i+8) {
    fill(255);
    rect(0, i, width, 8);
  }
  popMatrix();

  for (int i=0; i<40; i=i+5) {
    fill(255);
    rect(i+326, 114, 5, 86);
  }

  //horizontal 10
  for (int i=0; i<70; i=i+10) {
    fill(255);
    rect(366, i+256, width, 10);
  }
  //horizontal 7
  for (int i=0; i<125; i=i+18) {
    fill(255);
    rect(246, i+316, width, 342);
  }

  //horizontal 7 verticals
  for (int i=0; i<21; i=i+3) {
    fill(255);
    rect(i+400, 316, 3, 342);
  }
  for (int i=0; i<14; i=i+2) {
    fill(255);
    rect(i+450, 256, 2, 342);
  }
  for (int i=0; i<60; i=i+2) {
    fill(255);
    rect(i+490, 316, 2, 342);
  }
  for (int i=0; i<20; i=i+2) {
    fill(255);
    rect(i+600, 256, 2, 342);
  }
  for (int i=0; i<6; i=i+2) {
    fill(255);
    rect(i+630, 316, 2, 342);
    rect(i+645, 316, 2, 342);
  }

  for (int i=0; i<5; i=i+1) {
    fill(255);
    rect(i+680, 316, 1, 342);
  }
  for (int i=0; i<7; i=i+1) {
    fill(255);
    rect(i+690, 316, 1, 342);
  }
  for (int i=0; i<9; i=i+1) {
    fill(255);
    rect(i+700, 316, 1, 342);
  }

  //verticals for second last horizontal
  for (int i=0; i<21; i=i+3) {
    fill(255);
    rect(i+366, 200, 3, 116);
  }

  for (int i=0; i<20; i=i+2) {
    fill(255);
    rect(i+430, 200, 2, 116);
  }

  for (int i=0; i<10; i=i+2) {
    fill(255);
    rect(i+538, 200, 2, 116);
    rect(i+560, 200, 2, 116);
  }
  for (int i=0; i<20; i=i+2) {
    fill(255);
    rect(i+464, 256, 2, 60);
  }
  for (int i=0; i<12; i=i+2) {
    fill(255);
    rect(i+505, 256, 2, 60);
    rect(i+586, 256, 2, 60);
    rect(i+668, 256, 2, 60);
  }
  for (int i=0; i<4; i=i+1) {
    fill(255);
    rect(i+686, 256, 1, 60);
    rect(i+694, 256, 1, 60);
  }


  //verticals for 3rd last horizontal
  for (int i=0; i<21; i=i+3) {
    fill(255);
    rect(i+409, 200, 3, 56);
  }

  for (int i=0; i<14; i=i+2) {
    fill(255);
    rect(i+526, 200, 2, 56);
  }

  for (int i=0; i<8; i=i+2) {
    fill(255);
    rect(i+520, 144, 2, 112);
  }
  for (int i=0; i<4; i=i+1) {
    fill(255);
    rect(i+620, 144, 1, 112);
    rect(i+627, 144, 1, 112);
  }

  //vertical 

  for (int i=0; i<30; i=i+3) {
    fill(255);
    rect(i+366, 0, 3, 115);
    rect(i+396, 0, 3, 8);
  }
  for (int i=0; i<45; i=i+3) {
    fill(255);
    rect(i+426, 8, 3, 107);
  }

  //using the noise function learned in class
  for (i=0; i<31; i++) {
    float x= noise(t);
    x= map (x, 0, 1, 400, 1000);
    t= t+2;

    line(x, 0, x, 8);
  }
  for (i=0; i<10; i++) {
    float x= noise(t);
    x= map (x, 0, 1, 700, random(225, 710));
    t= t+0.01;
    rect(x, 8, 1, 30);
  }
  for (int i=0; i<30; i=i+3) {
    fill(255);
    rect(i+471, 70, 3, 130);
  }

  for (int i=0; i<4; i++) {
    fill(255);
    rect(i+700, 144, 1, 112);
  }
  for (int i=0; i<20; i=i+2) {
    fill(255);
    rect(i+675, 144, 2, 112);
    rect(i+590, 86, 2, 113);
  }
  for (int i=0; i<8; i=i+2) {
    fill(255);
    rect(i+570, 38, 2, 105);
  }
  for (int i=0; i<10; i=i+2) {
    fill(255);
    rect(i+690, 38, 2, 76);
    rect(i+655, 114, 2, 102);
  }
  for (int i=0; i<10; i++) {
    fill(255);
    rect(i+638, 38, 1, 22);
  }
  for (int i=0; i<6; i=i+2) {
    fill(255);
    rect(i+615, 38, 2, 48);
  }
  //for (int i=0; i<10; i=i+2) {
  //  fill(255);
  //  rect(i+655, 114, 2, 102);
  //}

  for (int i=0; i<5; i++) {
    fill(255);
    rect(i+540, 40, 1, 20);
  }

  //realizing I didn't have to make countless for loops
  for (int i=0; i<3; i++) {
    fill(255);
    rect(i+520, 60, 1, 26);
    rect(i+630, 60, 1, 26);
    rect(i+640, 60, 1, 26);
    rect(i+662, 60, 1, 26);
  }
  for (int i=0; i<5; i++) {
    fill(255);
    rect(i+523, 86, 1, 28);
    rect(i+548, 86, 1, 28);
    rect(i+680, 86, 1, 28);
    rect(i+680, 86, 1, 59);
  }
}
