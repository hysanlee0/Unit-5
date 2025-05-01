color white = #ffffff;
color black = #000000;
float ballx, bally, balld;
float vx, vy;
float ax, ay;

//player variables
float x, y, d;
float arrowX, arrowY;

//key variables
boolean wKey, sKey, aKey, dKey;
boolean upKey, downKey, leftKey, rightKey;

void setup() {
  size(600, 600, P2D);
  x = width/2;
  y = height/2;
  d = 100;
  arrowX = width/2;
  arrowY = height/2;
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  vx = 1;
  vy = 1;
  
  ax = 0;
  ay = 1;
}

void draw() {
  background(white);
  //black player
  strokeWeight(5);
  stroke(black);
  fill(black);
  circle(arrowX, arrowY, d);
  //white player
  fill(white);
  circle(x, y, d);
  stroke(0);
  //ball
  fill(254, 255, 26);
  circle(ballx, bally, balld);
 
  
  //movement code
  if (wKey) y = y - 15;
  if (sKey) y = y + 15;
  if (aKey) x = x - 15;
  if (dKey) x = x + 15;
  if (upKey) arrowY = arrowY - 15;
  if (downKey) arrowY = arrowY + 15;
  if (leftKey) arrowX = arrowX - 15;
  if (rightKey) arrowX = arrowX + 15;
  
  //movement
   ballx = ballx + vx;
   bally = bally + vy;
   
  //acceleration
   vx = vx + ax;
   vy = vy + ay;
   
   //controller stop
  if(x <= 0) {
     x = 0;
   }
  if (x >= width) {
     x = width;
   }
  if (y >= height) {
     y = height;
   }
  if (y <= 0) {
     y = 0;
   }
   if(arrowX <= 0) {
     arrowX = 0;
   }
  if (arrowX >= width) {
     arrowX = width;
   }
  if (arrowY >= height) {
     arrowY = height;
   }
  if (arrowY <= 0) {
     arrowY = 0;
   }
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
  //ball stop
  if(dist(x, y, ballx, bally) <= d/2 + balld/2) {
  vx = (ballx - x)/5;
  vy = (bally - y)/5;
 }
  if (dist(arrowX, arrowY, ballx, bally)<= d/2 + balld/2) {
  vx = (ballx - arrowX)/5;
  vy = (bally - arrowY)/5;
  }
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
