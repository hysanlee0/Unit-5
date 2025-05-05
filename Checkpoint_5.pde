import processing.sound.*;
  SoundFile fail, success, music;

color white = #ffffff;
color black = #000000;
float ballx, bally, balld;
float vx, vy;
float ax, ay;
int goalX, goalY;

//player variables
float whiteX, whiteY, d;
float blackX, blackY;

//key variables
boolean wKey, sKey, aKey, dKey;
boolean upKey, downKey, leftKey, rightKey;
boolean goalUp;

void setup() {
  size(600, 600, P2D);
  whiteX = 200;
  whiteY = 500;
  d = 100;
  blackX = 400;
  blackY = 500;
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  vx = 5;
  vy = 5;
  
  ax = 0;
  ay = 1;
  
  goalX = 0;
  goalY = height;
  
  //load assets
  fail = new SoundFile(this, "FAILURE.wav");
  music = new SoundFile(this, "MUSIC.mp3");
  success = new SoundFile(this, "SUCCESS.wav");
  

  music.loop();
  
}

void draw() {
  background(white);
  //black player
  strokeWeight(5);
  stroke(black);
  fill(black);
  circle(blackX, blackY, d);
  //white player
  fill(white);
  circle(whiteX, whiteY, d);
  stroke(0);
  //ball
  fill(254, 255, 26);
  circle(ballx, bally, balld);
  //hoops
  fill(white);
  circle(goalX, goalY, 50);
  fill(black);
  circle(goalX + width, goalY, 50);
 
  
  //movement code
  if (wKey) whiteY = whiteY - 15;
  if (sKey) whiteY = whiteY + 15;
  if (aKey) whiteX = whiteX - 15;
  if (dKey) whiteX = whiteX + 15;
  if (upKey) blackY = blackY - 15;
  if (downKey) blackY = blackY + 15;
  if (leftKey) blackX = blackX - 15;
  if (rightKey) blackX = blackX + 15;
  
  //movement
   ballx = ballx + vx;
   bally = bally + vy;
   
  //acceleration
   vx = vx + ax;
   vy = vy + ay;
   
   //controller stop
  if(whiteX <= 0) {
     whiteX = 0;
   }
  if (whiteX >= width) {
     whiteX = width;
   }
  if (whiteY >= height) {
     whiteY = height;
   }
  if (whiteY <= 0) {
     whiteY = 0;
   }
   if(blackX <= 0) {
     blackX = 0;
   }
  if (blackX >= width) {
     blackX = width;
   }
  if (blackY >= height) {
     blackY = height;
   }
  if (blackY <= 0) {
     blackY = 0;
   }
   
   //if controller touch goal===========================================================FIGURE OUT FIRST
  //if (dist(whiteX, whiteY, goalX, goalY) <= 75) {
  //   wKey = false;
  //   aKey = false;
  //   dKey = false;
  //   sKey = false;
  //   whiteX = (whiteX - goalX)/whiteX;
  //   whiteY = (whiteY - goalY)/whiteY;
  // } 
  //if (dist(blackX, blackY, (goalX + width), goalY) <= 75) {
  //   blackX = blackX + 25;
  //   blackY = blackY + 25;
  // }
   
   //bounce
  if (bally <=0 ) {
   vy = vy * -0.95;
   bally = 0;
  }
  if (bally >= height) {
   vy = vy * -0.95;
   bally = height;
  }
  if (ballx <= 0) {
   vx = vx * -0.95;
   ballx = 0;
  }
  if (ballx >= width) {
   vx = vx * -0.95;
   ballx = width;
  }
  //ball bounce
  if(dist(whiteX, whiteY, ballx, bally) <= d/2 + balld/2) {
  vx = (ballx - whiteX)/5;
  vy = (bally - whiteY)/5;
 }
  if (dist(blackX, blackY, ballx, bally)<= d/2 + balld/2) {
  vx = (ballx - blackX)/5;
  vy = (bally - blackY)/5;
  }
   
   //moving goal:
   if (goalUp == true) {
    goalY = goalY - 5; 
   } 
   if (goalUp == false) {
    goalY = goalY + 5; 
   }
   if (goalY > height) {
    goalUp = true;
   }
   if (goalY < 0) {
    goalUp = false;
   }
   //if there's a goal
   if(dist(ballx, bally, goalX, goalY) <=50) {
   success.stop();
   success.play();
   ballx = 300;
   bally = 300;
   whiteX = 200;
   whiteY = 500;
   blackX = 400;
   blackY = 500;
   goalY = height;
   }
   if(dist(ballx, bally, (goalX + width), goalY) <=50) {
   success.stop();
   success.play();
   ballx = 300;
   bally = 300;
   whiteX = 200;
   whiteY = 500;
   blackX = 400;
   blackY = 500;
   goalY = height;
   }
   //goal cannot touch players
   
}

void keyPressed() {
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;
  if (key == 'a') aKey = true;
  if (key == 'd') dKey = true;
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == RIGHT) rightKey = true;
  if (keyCode == LEFT) leftKey = true;
}

void keyReleased() {
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;
  if (key == 'a') aKey = false;
  if (key == 'd') dKey = false;
  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == RIGHT) rightKey = false;
  if (keyCode == LEFT) leftKey = false;
}
