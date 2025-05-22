//Hysan Lee
//May 21, 2025
//2-3

//colors
color white = #FFFFFF;
color black = #000000;

//player variables
float playerX = 240;
boolean right, left;

//ball variables
float ballX, ballY, ballD;

//brick arrays
int[] blockX;
int[] blockY;
int blockD;
int c;
int tempX, tempY;
int vx, vy;

//modes
int mode;
int intro = 0;
int game = 1;
int pause = 2;
int gameover = 3;

void setup() {
  size(600, 600);
  ballX = width/2;
  ballY = 535;
  ballD = 30;
  
  vx = 5;
  vy = 5;
  
  mode = game;
}

void draw() {
 if (mode==intro) intro();
 if (mode==game) game();
 if (mode==pause) pause();
 if (mode==gameover) gameover();
 
}
