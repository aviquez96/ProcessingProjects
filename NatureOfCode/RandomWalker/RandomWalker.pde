Walker w;

void setup() {
  size(635,400);
  w = new Walker();
}

void draw() {
  w.display();
  w.walk();
}