class Snake {
  float x;
  float y;
  float xsize;
  float ysize;
  float changeVal;
  float speed = 3;
  
  Snake (float xpos, float ypos, float xySize) {
    x = xpos;
    y = ypos;
    xsize = xySize;
    ysize = xySize;
   
    changeVal = xySize;
  }
  
  void show() {
    fill(255);
    rect(x,y,xsize, ysize);
  }
  
  void up() {
    y = y - changeVal;
    if (y < 0) {
      x = width/2-changeVal;
      y = height/2-changeVal;
    }
  }
  
  void down() {
    y = y + changeVal;
    if (y > height-1) {
      x = width/2-changeVal;
      y = height/2-changeVal;
    }
  }
  
  void left() {
    x = x - changeVal;
    if (x < 0) {
      x = width/2-changeVal;
      y = height/2-changeVal;
    }
  }
  
  void right() {
    x = x + changeVal;
    if (x > width-1) {
      x = width/2-changeVal;
      y = height/2-changeVal;
    }
  }

}