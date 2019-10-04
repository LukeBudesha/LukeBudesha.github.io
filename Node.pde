class Node {

  int small1;
  int big1;
  int small2;
  int big2;
  int small3;
  int big3;
  int small4;
  int big4;

  Node() {
    small1=int(random(5, 20));
    big1=int(random(120, 150));
    small2=int(random(5, 20));
    big2=int(random(120, 150));
    small3=int(random(5, 20));
    big3=int(random(120, 150));
    small4=int(random(5, 20));
    big4=int(random(120, 150));
  }
  
  float x(float t) {
    return sin(t/small1)*big1 + sin(t/small2)*big2;
  }
  
  float y(float t) {
    return cos(t/small3)*big3 + cos(t/small4)*big4;
  }
}