Ball [] balls = new Ball [30];

float total = 10;

color defaultColor = 255;
float randomDiameter = random(25,50);

void setup() {
  size (400, 400);
  //size (1300,1080);
  
  for(int i=0; i<balls.length; i++) {
    balls[i] = new Ball(random(25,50), defaultColor);
  }
}

void mousePressed() {
  if (total == balls.length) {
    total = balls.length;
  } else {
    total = total + 1;
  }
}

void keyPressed() {
  if (total == 0) {
    total = 0;
  } else {
    total = total - 1;
  }
}



void draw() {
  background(51);
  
  for (int i=0; i<total; i++) {
    balls[i].display();
    balls[i].ascend();
    //balls[i].top();
    balls[i].reborn();
  }
  
  //balls[1].collision(balls[0]);
}