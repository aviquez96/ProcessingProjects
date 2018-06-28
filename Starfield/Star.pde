class Star {
  float x; 
  float y;
  float z;
  
  float pz;
  
  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
  }
  
  void update () {
     z = z - speed;
     if (z < 1) {
       z = width;
       x = random(-width, width);
       y = random(-height, height);
       pz = z;
     }
  }
  
  void show() {
    fill(64, 224, 208);
    //64-224-208
    //fill(255);
    noStroke();
    
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    
    float r = map(z, 0, width, 16, 0);
    ellipse(sx,sy,r,r);
    
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);
    
    pz = z; 
    
    stroke(64, 224, 208);
    //stroke(204, 102, 0); 
    //stroke(255);
    line(px, py, sx, sy);
  }
}