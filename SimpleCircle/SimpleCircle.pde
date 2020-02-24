void setup() {
  size(600,600);
  background(0);
}

void draw() {
  translate(300, 300);
  noFill();
  stroke(255);
  beginShape();
  float r = 150;
  for (float i = 0; i <= TWO_PI; i += PI/180) {
    float x = r*cos(i);
    float y = r*sin(i);
    vertex(x, y);
  }
  endShape();
}
