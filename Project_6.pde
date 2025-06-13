PFont titleFont;
PFont defaultFont;
PImage Red, Blue;

import processing.sound.*;
  SoundFile fail, success, music;

//colours
color white = #ffffff;
color black = #000000;
color red = #FF0303;
color blue = #006CFF;
color darkGrey = #A0A0A0;
  
//mode variables
int mode;  

//asset variable
int fontSize;
  
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

float ballx, bally, balld;
float vx, vy;
float ax, ay;
int goalX, goalY;

//player variables
float redX, redY, d;
float blueX, blueY;
int rp = 0;
int bp = 0;

//key variables
boolean wKey, sKey, aKey, dKey;
boolean upKey, downKey, leftKey, rightKey;
boolean goalUp;

void setup() {
  size(600, 600, P2D);
  redX = 200;
  redY = 500;
  d = 100;
  blueX = 400;
  blueY = 500;
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
  titleFont = createFont("titleFont.ttf", 228);
  defaultFont = createFont("Arial", 12);
  
  //pictures
  Red = loadImage("red.png");
  Blue = loadImage("blue.png");
  
  //music
  fail = new SoundFile(this, "FAILURE.wav");
  music = new SoundFile(this, "MUSIC.mp3");
  success = new SoundFile(this, "SUCCESS.wav");
  

  music.loop();
  
  rp=5;
  mode = GAMEOVER; //----------------------------------------------------------------------------------------------------------------------
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
