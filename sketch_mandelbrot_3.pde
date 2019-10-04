void setup(){
  
  size(640,640);
  background(0);
  loadPixels();
    
}

float size=2;
int maximum=100;
float xdirection = -0.55;
float ydirection = -0.55;
int minIterations=1;
int newMinIts=1;

void draw(){
 
  newMinIts = minIterations;
  minIterations=100;
  
  for (int i=0;i<width;i++){
    for (int j=0;j<height;j++){
      
      float cr = map(i,0,width,-size+xdirection,size+xdirection);
      float ci = map(j,0,height,-size+ydirection,size+ydirection);
      
      int iterations = 0;
      float zr=0;
      float zi=0;
      
      while (iterations<maximum){
       
        float zr2 = pow(zr+cr,2)-pow(zi+ci,2);
        float zi2 = 2*(zr+cr)*(zi+ci);  
        
        zr = zr2;
        zi = zi2;
                
        if (abs((zr+cr)+(zi+ci))>2){  
          
          if (iterations < minIterations){
            minIterations=iterations;
          }
          
          break;
        }
      
      iterations++;
      }      
    
    colorMode(HSB);
        
    if(iterations==maximum){
    pixels[i+j*width]=color(0,255,0);
    }
    else{
    pixels[i+j*width]=color(map(iterations,newMinIts,100,200,100),255,255);
    }
      
    }
  }
  updatePixels();
  
  size*=0.96;
  
}