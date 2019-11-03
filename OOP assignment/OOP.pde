int SIZE=120;
int xSpeed;
int clickNum=0; 
//int c=0;


//int resetClick;
//boolean reset= false;
//boolean moving= true;
boolean gameOver= false;



//color[] colors= {color(255, 149, 149), color(255, 238, 149), 
//  color(149, 206, 255), color(228, 149, 255), 
//  color(235, 139, 219)};

class iceCream {
  float x, y, xSpeed;

  iceCream(float xpos, float ypos) {
    x= xpos;
    y= ypos;
    xSpeed= random(1, 4); //randomly assigns the  speed of the icecream
  }


  void updateMoving() {
    //xSpeed= random(1,4);
    //moving= true;
    x += xSpeed;
    //xSpeed= random(1,4);

    //if (clickNum == 0) {
    //  xSpeed= random(5);
    //}
  }

  void updateFreeze() { //freezes the icecream when clicked
    //moving= false;
    xSpeed= 0;
    println(x);
  }

  void reset() {
    xSpeed= random(1, 4); // reinitializes xSpeed when game is replayed
  }

  void checkCollisions() {
    float r= (SIZE/2)+13;
    if ( (x<r) || (x>width-r)) {
      xSpeed= -xSpeed;
    }
  }

  void drawmyIceCream () {
    pushMatrix();
    //if (xSpeed==0) {      
    fill(255, 149, 149);
    //}
    translate(400, 550);
    rotate(radians(180));
    arc(x, y, SIZE, SIZE+15, 0, PI, CHORD);
    ellipse(x, y, 25, 25);
    ellipse(x-20, y, 25, 25);
    ellipse(x-40, y, 25, 25);
    ellipse(x-58, y, 25, 25);
    ellipse(x+20, y, 25, 25);
    ellipse(x+40, y, 25, 25);
    ellipse(x+58, y, 25, 25);
    popMatrix();
  }

  void drawIceCream2 () {
    pushMatrix();
    //if (xSpeed==0) {      
    fill(149, 206, 259);
    //}
    translate(400, 550);
    rotate(radians(180));
    arc(x, y, SIZE, SIZE+15, 0, PI, CHORD);
    ellipse(x, y, 25, 25);
    ellipse(x-20, y, 25, 25);
    ellipse(x-40, y, 25, 25);
    ellipse(x-58, y, 25, 25);
    ellipse(x+20, y, 25, 25);
    ellipse(x+40, y, 25, 25);
    ellipse(x+58, y, 25, 25);
    popMatrix();
  }

  void drawIceCream3 () {
    pushMatrix();
    //if (xSpeed==0) {      
    fill(255, 238, 149);
    //}
    translate(400, 550);
    rotate(radians(180));
    arc(x, y, SIZE, SIZE+15, 0, PI, CHORD);
    ellipse(x, y, 25, 25);
    ellipse(x-20, y, 25, 25);
    ellipse(x-40, y, 25, 25);
    ellipse(x-58, y, 25, 25);
    ellipse(x+20, y, 25, 25);
    ellipse(x+40, y, 25, 25);
    ellipse(x+58, y, 25, 25);
    popMatrix();
  }

  void drawIceCream4 () {
    pushMatrix();
    //if (xSpeed==0) {      
    fill(228, 149, 255);
    //}
    translate(400, 550);
    rotate(radians(180));
    arc(x, y, SIZE, SIZE+15, 0, PI, CHORD);
    ellipse(x, y, 25, 25);
    ellipse(x-20, y, 25, 25);
    ellipse(x-40, y, 25, 25);
    ellipse(x-58, y, 25, 25);
    ellipse(x+20, y, 25, 25);
    ellipse(x+40, y, 25, 25);
    ellipse(x+58, y, 25, 25);
    popMatrix();
  }

  void drawIceCream5 () {
    pushMatrix();
    //if (xSpeed==0) {      
    fill(255, 149, 149);
    //}
    translate(400, 550);
    rotate(radians(180));
    arc(x, y, SIZE, SIZE+15, 0, PI, CHORD);
    ellipse(x, y, 25, 25);
    ellipse(x-20, y, 25, 25);
    ellipse(x-40, y, 25, 25);
    ellipse(x-58, y, 25, 25);
    ellipse(x+20, y, 25, 25);
    ellipse(x+40, y, 25, 25);
    ellipse(x+58, y, 25, 25);
    popMatrix();
  }

  void gameOver() { //assigns acceptable range of values in which the icecream can land
    if (x<150 || x>250) {//problem
      gameOver = true;
      //fill(255);
      //textSize(26);
      //text("Game Over", 150, 60);
      clickNum = 0;
      //} else if (x>250) {

      //  gameOver = true;
      //  clickNum=0;
      //}
    }
  }
}

//void reset() {
//  gameOver = false;
//}



iceCream myIceCream = new iceCream(150, 100);
iceCream IceCream2 = new iceCream(150, 164);
iceCream IceCream3 = new iceCream(150, 228);
iceCream IceCream4 = new iceCream(150, 292);
iceCream IceCream5 = new iceCream (150, 356);


void setup() {

  size(400, 600);
  smooth();
}

void draw() {

  background(255);
  pushMatrix();
  fill(168, 106, 35);
  noStroke();
  triangle(200, 600, 140, 450, 260, 450); // icecream cone
  popMatrix();

  if (gameOver == false ) { 
    myIceCream.checkCollisions();
    myIceCream.drawmyIceCream();
    //}

    //if (moving == true) {
    myIceCream.updateMoving();
  }

  if (clickNum == 1) { //each click freezes the moving icecream and calls the next icecream scoop
    //c=0;

    myIceCream.updateFreeze();
    IceCream2.drawIceCream2();
    IceCream2.checkCollisions();
    IceCream2.updateMoving();
    //IceCream2.reset();
    //IceCream2.reset();
  } else if (clickNum == 2) {
    //  c=1;
    IceCream2.updateFreeze();
    IceCream2.drawIceCream2();
    IceCream3.drawIceCream3();
    IceCream3.checkCollisions();
    IceCream3.updateMoving();
  } else if (clickNum ==3) {
    //c=2;
    IceCream2.drawIceCream2();
    IceCream3.updateFreeze();
    IceCream3.drawIceCream3();
    IceCream4.drawIceCream4();
    IceCream4.checkCollisions();
    IceCream4.updateMoving();
  } else if (clickNum ==4) {
    //c=3;
    IceCream2.drawIceCream2();
    IceCream3.drawIceCream3();
    IceCream4.updateFreeze();
    IceCream4.drawIceCream4();
    IceCream5.drawIceCream5();
    IceCream5.checkCollisions();
    IceCream5.updateMoving();
  } else if (clickNum ==5) {
    //c=4;
    fill(0);
    textSize(26);
    text("Have another icecream!", 60, 60);
    IceCream2.drawIceCream2();
    IceCream3.drawIceCream3();
    IceCream4.drawIceCream4();
    IceCream5.drawIceCream5();
  } else if (clickNum == 6) { //click that resets the game after the player has won
    clickNum = 0;
    //moving = true;
    gameOver = false;
    //myIceCream.updateMoving();
    myIceCream.reset();
    IceCream2.reset();
    IceCream3.reset();
    IceCream4.reset();
    IceCream5.reset();
  } 

  if (gameOver == true) { //ends the game when the player has lost
    fill(0);
    textSize(26);
    text("No icecream for you", 75, 60);


    //reset= true;
  }

  //if (reset == true) {
  //  gameOver = false;
  //  moving = true;
  //}
}


void mousePressed() {


  if (gameOver == false) { //increments the clickNum by one when the game is playing
    clickNum ++;
    print(clickNum);
  }
  // checks the range the icecream is clicked 
  myIceCream.gameOver(); 
  IceCream2.gameOver();
  IceCream3.gameOver();
  IceCream4.gameOver();
  IceCream5.gameOver();



  //if (reset == true) {
  //  // myIceCream.reset()
  //  print("reset");
  //}
}
