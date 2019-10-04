
void setup() {
  //Set the size of the window
  size(640, 640);
  background(0);
}

float i = 0;
int trail = 20;
int gap = 2;
float hue;

void draw() {
  
  background(0);
  
  colorMode(RGB);
  fill(255);
  stroke(255);
  strokeWeight(3);
  
  translate(height/2, width/2);
  for (int j=0; j<(trail*gap); j+=gap){
  colorMode(HSB);
  hue = 200+(x1(i+j))/30;
  stroke(hue,255,255);
  line(x1(i+j),y1(i+j),x2(i+j),y2(i+j)); 
  }
    
  i+=(0.4);
  
}

float x1(float t){
  return sin(t/10)*150 + sin(t/15)*150;
}

float y1(float t){
  return cos(t/8)*150 + sin(t/10)*150;
}

float x2(float t){
  return sin(t/20)*120 + sin(t/50)*150;
}

float y2(float t){
  return cos(t/18)*140 + sin(t/12)*150;
}