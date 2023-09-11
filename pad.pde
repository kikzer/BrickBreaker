class Pad {
  int positionX;
  int positionY;
  int h;
  int w;
  Pad() {   
    h = 15;
    w = 200;
    positionX = width/2-w/2;
    positionY = 700;
  }
  void show() {
    fill(255);
    rect(positionX, positionY, w, h);
  }
  void checkHit(Ball ball) {
    //Top
      if (ball.x > positionX && ball.x < positionX+w && ball.y >positionY-ball.extend/2 && ball.y < positionY) {
        ball.vy=-ball.vy;
      }
    //LEFT
    if (ball.x > positionX - ball.extend/2 && ball.y > positionY && ball.y < positionY+h && ball.x < positionX) {
      ball.vx=-ball.vx;
    }
    //Right
    if (ball.x > positionX+w  && ball.y > positionY && ball.y < positionY+h && ball.x<positionX+w+ball.extend/2) {
      ball.vx=-ball.vx;
    }
  }
}
