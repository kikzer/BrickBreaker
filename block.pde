class Block {
  int positionX;
  int positionY;
  int w;
  int h;
  int numbBlock;
  boolean hit = false;
  int hitCounter = 0;
  int r = 0;
  int g = 180;
  int b = 2;
  Block() {
    numbBlock = 8;
    w = width/numbBlock;
    h = 25;
    positionX = 0;
    positionY = 0;
  }
  Block(int x, int y, int numbOfBlocks) {
    numbBlock = numbOfBlocks;
    w = width/numbOfBlocks;
    h = 25;
    positionX = x*w;
    positionY = y*h;
  }

  void show() {
    fill(r,g,b);
    if (!hit)
      rect(positionX, positionY, w, h);
  }
  void checkHit(Ball ball) {
    //Bottom
    if (!hit) {
      if (ball.x > positionX && ball.x < positionX+w && ball.y < (positionY+h+ball.extend/2)&& ball.y>positionY+h) {
        ball.vy=-ball.vy;
        hitCounter++;
        r = 255;
        if(hitCounter == 2){
         hit = true;
         score++;
         hitCounter = 0;
         r = 0;
        }
      }
      //Top
      if (ball.x > positionX && ball.x < positionX+w && ball.y >positionY-ball.extend/2 && ball.y < positionY) {
        ball.vy=-ball.vy;
        hitCounter++;
        r = 255;
        if(hitCounter == 2){
         hit = true;
         score++;
         hitCounter = 0;
         r = 0;
        }
      }
      //Left
      if (ball.x > positionX - ball.extend/2 && ball.y > positionY && ball.y < positionY+h && ball.x < positionX) {
        ball.vx=-ball.vx;
        hitCounter++;
        r = 255;
        if(hitCounter == 2){
         hit = true;
         score++;
         hitCounter = 0;
         r = 0;
        }
      }
      //Right
      if (ball.x > positionX+w  && ball.y > positionY && ball.y < positionY+h && ball.x<positionX+w+ball.extend/2) {
        ball.vx=-ball.vx;
        hitCounter++;
        r = 255;
        if(hitCounter == 2){
         hit = true;
         score++;
         hitCounter = 0;
         r = 0;
        }
      }
    }
  }
}
