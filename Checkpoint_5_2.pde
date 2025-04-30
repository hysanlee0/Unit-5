float ballx, bally, balld;
float vx, vy;
float ax, ay;


void setup() {
  size(600, 600, P2D);
  ballx = 300;
  bally = 300;
  balld = 50;
  
  vx = 1;
  vy = 1;
  
  ax = 0;
  ay = 1;
}


void draw() {
  //background(255);
  stroke(0);
  fill(254, 255, 26);
  circle(ballx, bally, balld);
  
  //movement
   ballx = ballx + vx;
   bally = bally + vy;
   
  //acceleration
   vx = vx + ax;
   vy = vy + ay;
   
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
}
