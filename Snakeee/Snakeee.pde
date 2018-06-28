Snake snake;

float x; 
float y;
float xysize = 10;
float keyVal = UP;

void setup() {
  size (500, 500);
  x = width/2-xysize;
  y = height/2-xysize;
  snake = new Snake(x,y,xysize);
}

void draw () {
  background(51);
  snake.show();
  if (keyVal == UP) {
    snake.up();
  } else if (keyVal == DOWN) {
    snake.down();
  } else if (keyVal == RIGHT) {
    snake.right();
  } else if (keyVal == LEFT) {
    snake.left();
  }  
   
}

void keyPressed() {
  if (keyCode == UP) { 
    keyVal = UP;
  } else if (keyCode == DOWN) {
    keyVal = DOWN;
  } else if (keyCode == RIGHT) {
    keyVal = RIGHT;
  } else if (keyCode == LEFT) {
    keyVal = LEFT;  
  }
}