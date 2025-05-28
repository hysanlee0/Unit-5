//Hysan Lee
//May 21, 2025
//2-3

//colors
color white = #FFFFFF;
color black = #000000;

//player variables
float playerX = 300;
float playerY = 600;
float playerD = 100;
boolean right, left;

//ball variables
float ballX, ballY, ballD;

//brick arrays
int[] blockX;
int[] blockY;
int blockD = 50;
int n = 28;
int i = 0;
int c;
int tempX = 50;
int tempY = 50;
float vx, vy;

//modes
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;

void setup() {
  size(600, 600, P2D);
  ballX = width/2;
  ballY = 535;
  ballD = 30;
  
  blockX = new int[n];
  blockY = new int[n];
  int i= 0;
  while (i < n) { //==============================================
   blockX[i] = tempX;
   blockY[i] = tempY;
   tempX += 100;
   if (tempX == width) {
    tempX = 100;
    tempY += 100;
   }
   i += 1;
  } 
  
  vx = 10;
  vy = 10;
  
  mode = game;
}

void draw() {
 if (mode==intro) intro();
 if (mode==game) game();
 if (mode==pause) pause();
 if (mode==gameover) gameover();
 
}
