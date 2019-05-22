class Player {
  int xP, xB, yB, playerWidth, heightOffGround;
  boolean isShooting = false;
  int score = 0;
  public Player(int playerWidth) {
    xP = (int) width / 2;
    this.playerWidth = playerWidth;
    heightOffGround = height - 10 - playerWidth / 2;
  }

  void showPlayer() {
    fill(255, 30, 30);
    rect(xP - playerWidth / 2, heightOffGround, 25, 18);
  }

  void changePlayerPosition() {
    if (keyPressed && key == CODED) {
      xP = keyCode == RIGHT ? xP + 5 : xP;
      xP = keyCode == LEFT ? xP - 5 : xP;
    }
    xP = (xP - playerWidth / 2) <= 0 ? 0 + playerWidth : xP;
    xP = (xP + playerWidth / 2) >= width ? width - playerWidth : xP;
  }
  void shotSomething() {

    if (keyPressed && key == ' ' && !isShooting) {
      isShooting = true;
      xB = xP;
      yB = heightOffGround;
    }
    if (isShooting) {

      fill(0, 250, 0);
      rect(xB, yB, 5, 5);
      yB -= 10;
      isShooting = yB <= 0 ? false : true;
    }
  }
}
//PLAYER class ENDS
