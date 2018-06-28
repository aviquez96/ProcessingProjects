Raindrop drop;

void setup() {
  size (600,600);

  drop = new Raindrop();
}


void draw() {
  background (230,230,250);
  drop.display();
  drop.fall();
  
}