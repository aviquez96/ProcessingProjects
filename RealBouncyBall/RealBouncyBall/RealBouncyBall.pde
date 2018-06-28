Ball b;

void setup () {
  size (400,300);
  b = new Ball();
}

void draw () {
  background (255);
  
  PVector gravity = new PVector (0,1);
  b.applyForce(gravity);
  
  b.move();
  b.edges();
  b.display();
}