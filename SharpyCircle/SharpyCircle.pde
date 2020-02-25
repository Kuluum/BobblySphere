void setup() {
  size(300, 300);
  background(0);
  frameRate(10); // Set little frame rate ro decrase animation speed
}

void draw() {
  clear();
  translate(150, 150);
  noFill();
  stroke(255);
  beginShape();
  float r = 100;
  for (float i = 0; i <= TWO_PI; i += PI/180) {
    float x = (r + random(10)) * cos(i); 
    float y = (r + random(10)) * sin(i);
    vertex(x, y);
  }
  endShape();
}
