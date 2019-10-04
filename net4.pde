Node[] n;
final int NUMBER = 10;
float speed = 3;

void setup() {
  //Set the size of the window
  size(640, 640);
  background(0);
  
  n = new Node[NUMBER];
  for (int i=0; i<NUMBER; i++){
    n[i] = new Node();  
  }
}

float j=0;

void draw() {
  
  background(0);
  
  fill(255);
  stroke(255);
  strokeWeight(2);
  translate(height/2, width/2);
    
  for (int i=0; i<NUMBER-1; i++){
    line(n[i].x(j), n[i].y(j),n[i+1].x(j), n[i+1].y(j));
  }
  
  for (int i=0; i<NUMBER-2; i++){
    line(n[i].x(j), n[i].y(j),n[i+2].x(j), n[i+2].y(j));
  }  
     
  j+=(speed/10);
  
}