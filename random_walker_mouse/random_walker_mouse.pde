// random walker that tends to move towards the mouse (50% chance)

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
   
    // if x - mouseX is < 0 (move right)
    // if y- mouseY is < 0 (move down)
    
    float offsetX = x - mouseX;
    float offsetY = y - mouseY;
    
    // 50% move towards mouse; thus do nothing
    // 20 opposite x, 20 opposite y, 10 opposite both
    float r = random(1);
    
    if (r < 0.2) {
      offsetX = offsetX * -1;
    } else if (r < 0.4) {
      offsetY = offsetY * -1;
    } else if (r <0.5) {
      offsetX = offsetX * -1;
      offsetY = offsetY * -1;
    }
    
    if (offsetX < 0) {
      x++;
    } else {
      x--;
    }
    
    if (offsetY < 0) {
      y++;
    } else {
      y--;
    }
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
