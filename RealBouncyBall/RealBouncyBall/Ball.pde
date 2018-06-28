class Ball {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float diameter;
  
  Ball() {
    position = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    diameter = 35;
  }
  
  void display (){
    fill (255,0,0);
    ellipse(position.x,position.y,diameter,diameter);
  }
  
  void move() {
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void applyForce (PVector f) {
    acceleration = f;
  }
  
  void edges() {
    //if (position.x > width) {
    //  position.x = 0;
    //}
    
    //if (position.x < 0) {
    //  position.x = width; 
    //}
    
    //if (position.y < 0) {
    //  position.y = height;
    //}
    
    //if (position.y > height) {
    //  position.y = 0;
    //}    
  
    if (position.x > width) {
      position.x = width;
      velocity.x *= -1;
    } else if (position.x < 0) {
      velocity.x *= -1;
      position.x = 0;
    }
 
    if (position.y > height) {
      velocity.y *= -1;
      position.y = height;
    }
  }
}