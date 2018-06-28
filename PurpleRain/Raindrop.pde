class Raindrop {
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  Raindrop() {
    position = new PVector (width/2, height/2);
    velocity = new PVector (0,3);
    acceleration = new PVector (0,0);
  }

  void fall() {
    position.add(velocity);
    
  }

  void display() {
    stroke(138,43,226);
    line(position.x,position.y,position.x,position.y+10);
  }

}