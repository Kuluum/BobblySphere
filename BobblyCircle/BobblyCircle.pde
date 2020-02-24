void setup() {
  size(600,600);
  background(0);
  frameRate(10);
}

void draw() {
  clear();
  translate(300, 300);
  noFill();
  stroke(255);
  beginShape();
  float r = 150;
  for (float i = 0; i <= TWO_PI; i += PI/180) {
    float x = (r+ random(10)) * cos(i) ;
    float y = (r+ random(10)) *sin(i) ;
    vertex(x, y);
  }
  endShape();
}
