int i;
float t;
float x=0;

void setup() {
  size(1300, 1000);
  background(0);
}

void draw() {
  if (frameCount % 6 ==0) {
    background(0);


    for (i=0; i<20; i++) {
      float x= noise(t);
      x= map(x, 0, 1, random(0, 200), random(0, 100));
      t= t+0.01;

      stroke(random(100, 255), random(0, 255), random(0, 255));    
      line(x, 0, x, height );
    }

    for (i=0; i<random(80, 150); i++) {
      float x= noise(t);
      x= map(x, 0, 1, height, random(400, 700));
      t= t+0.01;

      stroke(random(200, 255));
      //  strokeWeight(random(1, 3));
      line(x, 0, x, height );
    }


    for (i=0; i<2; i++) {
      float x= noise(t);
      x= map(0, x, 1, random(0, 200), random(0, 100));
      t= t+0.01;

      stroke(random(200, 255));
      line(0, x, width, x );
    }

    //for (i=0; i<2; i++) {
    //   float x= noise(t);
    //  x= map(0, x, 1, random(0, 200), random(0, 100));
    //  t= t+0.01;
    //  stroke(random(100, 255), random(0, 255), random(0, 255));   
    //  line(0, x, width, 0 );
    //}
  }
}
