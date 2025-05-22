void keyPressed() {
  if (key == 'a') left = true;
  if (key == 'd') right = true;
  if (keyCode == RIGHT) right = true;
  if (keyCode == LEFT) left = true;
}

void keyReleased() {
  if (key == 'a') left = false;
  if (key == 'd') right = false;
  if (keyCode == RIGHT) right = false;
  if (keyCode == LEFT) left = false;
}
