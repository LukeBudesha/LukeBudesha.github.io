class Particle {

  float size;
  float mass;
  PVector location;
  PVector velocity;
  PVector acceleration;
  int brightness;
  float life;
  float hue;

  Particle() {
    size=random(3, 20);
    mass=size;
    location = new PVector(random(0, width),height);
    velocity = new PVector(0,-random(2,6));
    acceleration = new PVector(0,0);
    brightness=int(random(100, 255));
    life = random(0, 10);
    hue=int(random(0, 45));
  }

  void display() {
    noStroke();
    colorMode(HSB);
    fill(hue, 255, 255, brightness);
    ellipseMode(CENTER);
    ellipse(location.x, location.y, size, size);
  }
  
  void applyforce(PVector force){
    PVector f = PVector.div(force,mass/5);
    acceleration.add(f);
  }

  void move() {
    velocity.add(acceleration);
    //if (velocity.y > -0.01) {velocity.y = -0.01;}
    location.add(velocity);
    acceleration.mult(0);
    
    brightness -= 1/life; 
    hue -= 1/life;
    if (brightness<0) {
      brightness = 0;
    }
  }
}