//Hysan Lee
//May 21, 2025
//2-3

PImage[] gif;
int gifFrames;

//colors
color white = #FFFFFF;
color black = #000000;
color lightYellow = #FBF8CC;
color lightOrange = #FDE4CF;
color lightRed = #FFCFD2;
color lightPurple = #CFBAF0;
color lightBlue = #A3C4F3;
color lightAqua = #98F5E1;
color lightGreen = #B9FBC0;

//player variables
float playerX = 1000/2;
float playerY = 1000;
float playerD = 100;
boolean right, left;

//ball variables
float ballX, ballY, ballD;

//brick arrays
int[] blockX;
int[] blockY;
boolean[] alive;
int blockD = 50;
int n = 70; //number of blocks
int i = 0;

int tempX = 50;
int tempY = 50;
float vx, vy;

//mechanics
int score = 0;
int lives = 3;

//modes
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;

void setup() {
  size(1000, 1000, P2D);
  gifFrames = 45
  gif = new PImage[gifFrames];
  
  ballX = width/2;
  ballY = 535;
  ballD = 30;
  
  blockX = new int[n];
  blockY = new int[n];
  alive = new boolean[n];
  int i= 0;
  while (i < n) { //==============================================
   blockX[i] = tempX;
   blockY[i] = tempY;
   alive[i] = true;
   tempX += 100;
   if (tempX > width) {
    tempX = 50;
    tempY += 75;
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
