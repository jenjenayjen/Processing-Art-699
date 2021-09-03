int step = 10;
int x = 850;
int y = 500;
int counter = 0;
int timer = 0;

void setup() {
  size(displayWidth,displayHeight);
  background(255);
  //size(1200, 1200);
  //size (width,height);
  //fullScreen();
  frameRate(10);
}

void draw() {
  if (timer < 2730) {
    noStroke();
    fill(random(255), random(255), random(255), random(81,120));
    ellipse(x, y, step, step);
    int direction = int(random(0, 4));
    if (direction == 0) {
      x = x + step;
    } else if (direction == 1) {
      x = x - step;
    } else if (direction == 2) {
      y = y + step;
    } else {
      y = y - step;
    }
    timer +=1;
  }
  else{
    print("stop");
    //exit();
    background(255);
    timer = 0;
    x = 850;
    y = 500;
  }
}