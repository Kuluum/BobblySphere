PVector[][] globe;
int total = 30;
float phase = 0;
float speed = 1;

void setup() {
  size(600, 600, P3D);  
  globe = new PVector[total+1][total+1];
  frameRate(10); // Set little frame rate ro decrase animation speed
}

float xoff = 0;

void draw() {
  background(0);
  stroke(255);
  noFill();
  translate(300, 300, 0);

  push();
  
  // Some rotation for animation
  rotateX(phase/2);
  rotateY(phase/2);
  rotateZ(phase/2);
  
  float r = 200;
  
  for (int i = 0; i < total+1; i++) {
    float lat = map(i, 0, total, 0, PI);
    
    beginShape(TRIANGLE_STRIP);
    
    for (int j = 0; j < total+1; j++) {
      float lon = map(j, 0, total, 0, TWO_PI);
   
      float x = r * sin(lat) * cos(lon);
      float y = r * sin(lat) * sin(lon);
      float z = r * cos(lat);
      globe[i][j] = new PVector(x, y, z);
      
      if (i!=0) {
        PVector v1 = globe[i-1][j];
        PVector v2 = globe[i][j];

        // Draw triangle with vertex
        vertex(v1.x, v1.y, v1.z);
        vertex(v2.x, v2.y, v2.z);
      }
    }
    endShape();
  }
  pop();
  
  phase += speed;
  saveFrame("frames/" + str(phase) +".jpg");
}
