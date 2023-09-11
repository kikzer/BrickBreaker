class Condition {
  boolean loose;
  int counter;
  Condition() {
     loose = false;
     counter = 3;
  }
  void loseCondition(Ball ball) {
    if (ball.y > height-ball.extend/2) {
      loose = true;
    }
  }
}
