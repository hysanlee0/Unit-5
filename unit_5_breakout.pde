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
int blockD;
int c;
int tempX, tempY;
float vx, vy;

//modes
int mode;
int intro = 0;
int game = 1;
int pause = 2;
int gameover = 3;

void setup() {
  size(600, 600, P2D);
  ballX = width/2;
  ballY = 535;
  ballD = 30;
  
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
