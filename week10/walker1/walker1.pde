ArrayList<Walker> walkerList = new ArrayList<Walker>();

void setup() {
  size(1000, 700);
  noStroke();
  background(255);
}

void draw() {
  for (Walker walker : walkerList) {
    walker.move();
    walker.display();
  }
}

void mousePressed() {
  walkerList.add(new Walker(mouseX, mouseY));
}

class Walker {
  float x, y, xStep, yStep, siz;

  Walker(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 2;
    this.xStep = this.siz * 2;
    this.yStep = this.siz * 2;
  }

  void display() {
    fill(0);
    rect(x, y, siz, siz);
  }

  void move() {
    int rand = (int)random(4);
    switch (rand) {
    case 0:
      x-=xStep;
      break;
    case 1:
      x+=xStep;
      break;
    case 2:
      y-=yStep;
      break;
    case 3:
      y+=yStep;
      break;
    default:
      break;
    }
  }
}