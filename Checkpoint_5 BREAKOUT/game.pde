void game() {
  background(black);
  rect(playerX, 550, 120, 20);
  circle(ballX, ballY, ballD);
  
  //player movement
  if(right) playerX += 5;
  if(left) playerX -= 5;
  
  //ball movement
  ballX += vx;
  ballY += vy;
  
  //ball bounce
  if(dist(playerX, 550, ballX, ballY) <= d/2 + ballD/2) {
  vx = (ballX - playerX)/3;
  vy = (ballY - playerY)/3;
 }
  
  //bounce off walls 
  if(playerX + 120 >= width) playerX = width-120;
  if(playerX <= 0) playerX = 0;
  
  //blocks
  
}
