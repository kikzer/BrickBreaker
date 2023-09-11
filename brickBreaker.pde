
Ball player;
Block[][] block;
Pad pad;
Condition condition;
int score = 0;
boolean start = false;
void setup() {  
  frameRate(100);
  size(800, 800);
  player = new Ball();
  block = new Block[8][8];
  pad = new Pad();
  condition = new Condition();
  player = new Ball();
  
  for (int i = 1; i< block.length-1; i++) {
    for (int j = 0; j< block[0].length-1; j++) {
      block[i][j] = new Block(i, j, block.length);
    }
  }
}

void reset() {
  score = 0;
  for (int i = 1; i< block.length-1; i++) {
    for (int j = 0; j< block[0].length-1; j++) {
      block[i][j] = new Block(i, j, block.length);
    }
  }
}

void startBall() {
  if ( mousePressed && !start) {
    start = true;
    condition = new Condition();
  } else if ((keyCode == SHIFT && keyPressed)|| start && condition.loose)start = false;
}

void startGame() {
  
  //reset();
  player.show();
  pad.show();
  startBall();
  condition.loseCondition(player);
  pad.checkHit(player);
  checkBlock();
  rule();
  showScore();
}

void checkBlock(){
 for (int i = 1; i< block.length-1; i++) {
    for (int j = 1; j< block.length-1; j++) {
      block[i][j].show();
      block[i][j].checkHit(player);
    }
  } 
}
void rule(){
  if (start) {
    player.move(pad.positionX, pad.positionY, pad.w, pad.h);
  } else {
    player.reset();
    reset();
  }  
}

void showScore(){
  fill(255,0,255);
  textSize(20);
  text("Score: " + score, width - 140, height - 10); 
}
void draw() {
  background(255);
  startGame();
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT && pad.positionX < width-pad.w) {
      pad.positionX+=20;
    } else if (keyCode == LEFT && pad.positionX > 0) {
      pad.positionX-=20;
    }
  }
}
