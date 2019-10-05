Node[] n;
final int NUMBER = 13;
float speed = 2;

void setup() {
  //Set the size of the window
  size(640, 640);
  background(0);
  
  n = new Node[NUMBER];
  for (int i=0; i<NUMBER; i++){
    n[i] = new Node();  
  }
}

float j=80.8;
void draw() {
  
  background(0);
  
  fill(255);
  stroke(255);
  strokeWeight(2);
  translate(height/2, width/2);
    
  for (int k=1; k<NUMBER; k++){
    
  for (int i=0; i<NUMBER-k; i++){
    
    if ( sqrt(sq(n[i].x(j)-n[i+k].x(j))+sq(n[i].y(j)-n[i+k].y(j)))<255){
      stroke(abs(255-sqrt(sq(n[i].x(j)-n[i+k].x(j))+sq(n[i].y(j)-n[i+k].y(j)))));
      line(n[i].x(j), n[i].y(j),n[i+k].x(j), n[i+k].y(j));
    }
  }
  }
  
  

     
  j+=(speed/10);
  
}