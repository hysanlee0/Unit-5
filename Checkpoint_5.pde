import processing.sound.*;
  SoundFile fail, success, music;

//colours
color white = #ffffff;
color black = #000000;
  
//mode variables
int mode;  
  
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

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
  
  mode = 1;
}

void draw() {
  if(mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else {
    println("Error, mode is " + mode);
}
}
