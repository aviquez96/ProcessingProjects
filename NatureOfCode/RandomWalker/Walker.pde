class Walker {
  float x;
  float y;
  float option;
  
  Walker (){
    x = width/2;
    y = height/2;
  }
  
  void display() {
    ellipse(x,y,2,2);
  }
 
  void walk() {
    option = int(random(0,4));
  
    if (option == 0) {
      x = x - 1;
    } else if (option == 1) {
      x = x + 1;
    } else if (option == 2) {
      y = y - 1;
    } else {
      y = y + 1;
    }
    
  }

}