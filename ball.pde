class Ball {
  float x, y, vx, vy;
  int extend;
  Ball() {
    x = width/2;
    y = 680;
    vx = 3;
    vy = 4;
    extend = 25;
  }
  void move(int xP, int yP, int w, int h) {
    x += vx;
    y += vy;
    if (x < extend/2 || x > width-extend/2) {
      vx = -vx;
    }
    if (y < extend/2 || y > height-extend/2) {
      vy = -vy;
    }
  }

  void show() {
    fill(0);
    circle(x, y, extend);
  }
  void reset() {
    int num = (int)random(100);
    x = width/2;
    y = 680;
    if (num %2 == 0) {
      vx = 3;
      vy = 4;
    } else {
      vx = -3;
      vy = -4;
    }
  }
  float getBorderX() {
    return extend/2+x;
  }
  float getBorderY() {
    return extend/2+y;
  }
}
