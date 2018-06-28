class Ball {
  
  float x;
  float y;
  float diameter;
  color Color;

  Ball(float tempD, color clr) {
    x = random(width);
    y = random(height);
    diameter = tempD;
    Color = clr;
  }

  void display() {
    strokeWeight(2);
    fill(Color);
    ellipse(x,y,diameter, diameter);
  }

  void top () {
    if (y <diameter/2) {
      y = y+5;
    }
  }
  
  //void collision (Ball object) {
  //  float d = dist(x,y,object.x,object.y);
  //  if (d > radius + object.radius) {
  //    Color = color (255,0,0);
  //    object.Color = color (0,255,0);
  //  }
  //  else {
  //    Color = color(200);
  //    object.Color = color (0,0,255);
  //  }
  //}
  
  void ascend() {
    y--;
  }
  
  void reborn() {
    if (y < -diameter/2) {
      y = height+diameter/2;
      Color = color(random(255),random(255),random(255));
      x = random(width);
    }
  }
  
}