// random walker with 8 possible steps (left, right, up, down, top-left, top-right, bottom-left, bottom-right)

class Walker {
  int x;
  int y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    int stepx = int(random(3)) - 1;
    int stepy = int(random(3)) - 1;
    x += stepx;
    y += stepy;
  }
}

// declare global variable
Walker w;

void setup() {
  size(640,360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
