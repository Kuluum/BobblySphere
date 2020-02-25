void setup() {
  size(300, 300); // Canvas size (width, height)
  background(0); // Background color
}

void draw() {
  translate(150, 150); // Move all drawn after this by 150 right and 150 down
  noFill();    // Show only outline
  stroke(255); // Outline color
  beginShape();
  float r = 100;
  for (float i = 0; i <= TWO_PI; i += PI/180) {
    float x = r*cos(i);
    float y = r*sin(i);
    vertex(x, y);
  }
  endShape();
}
