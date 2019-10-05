
void setup() {
  //Set the size of the window
  size(640, 640);
  background(0);
}

float i = 0;
int trail = 17;
int gap = 2;

void draw() {
  
  background(0);
  
  int weight = 0;
    
  translate(height/2, width/2);
  for (int j=0; j<(trail*gap); j+=gap){
  
    fill(weight);
    stroke(weight);
    strokeWeight(3);
    
    line(x1(i+j),y1(i+j),x2(i+j),y2(i+j));
    line(x1(i+j),y1(i+j),x3(i+j),y3(i+j));
    line(x2(i+j),y2(i+j),x3(i+j),y3(i+j));
    
    weight = weight +15;
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

float x3(float t){
  return sin(t/10)*150 + sin(t/34)*87;
}

float y3(float t){
  return cos(t/22)*87 + sin(t/8)*130;
}