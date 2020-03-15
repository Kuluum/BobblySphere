float t = 0; // Time (passed frames actualy)
float speed = 0.03; // Bobbling speed coefficient
float bobbleRate = 0.5; // More rate -> mor sharp, Less rate - more bobble.

void setup() {
  size(300, 300);
  background(0);
  frameRate(20);
}

void draw() {
  clear();
  translate(150, 150);
  noFill();
  stroke(255);
  
  beginShape();
  float phase = t*speed;
  for (float i = 0; i <= TWO_PI; i += PI/180) {
    // Playing with bobble rate
    float xoff = map(cos(i), -1, 1, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    float r = map(noise, 0, 1, 80, 140);
    float x = r  * cos(i); 
    float y = r  * sin(i);
    
    vertex(x, y);
  }
  endShape();
  t += 1;
  //saveFrame("frame/" + str(t) + ".jpg");
}
