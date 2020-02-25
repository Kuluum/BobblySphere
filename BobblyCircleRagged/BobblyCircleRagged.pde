float t = 0; // Time (passed frames actualy)
float speed = 0.1; // Bobbling speed coefficient
float maxNoise = 15; // Maximum noise amplitude

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
  
  for (float i = 0; i <= TWO_PI; i += PI/180) {
    float noise = noise(i, t*speed); //i - changing over point, t*speed - changing over time
    float rNoise = map(noise, 0, 1, -maxNoise, maxNoise); // Mapping (0, 1) -> (-maxNoise, maxNoise)
    float r = 100 + rNoise;
    float x = r  * cos(i); 
    float y = r  * sin(i);
    
    vertex(x, y);
  }
  endShape();
  t += 1;
}
