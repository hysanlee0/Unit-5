color white = #ffffff;
color black = #000000;

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
}

void draw() {
  background(white);
  strokeWeight(5);
  stroke(black);
  fill(black);
  circle(arrowX, arrowY, d);
  fill(white);
  circle(x, y, d);
 
  
  //movement code
  if (wKey) y = y - 5;
  if (sKey) y = y + 5;
  if (aKey) x = x - 5;
  if (dKey) x = x + 5;
  if (upKey) arrowY = arrowY - 5;
  if (downKey) arrowY = arrowY + 5;
  if (leftKey) arrowX = arrowX - 5;
  if (rightKey) arrowX = arrowX + 5;
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
