import ddf.minim.*;


class Player {
  
  int xPlayer, xBullet, yBullet, playerWidth, heightOffGround, playerSpeed;
  boolean isShooting = false, isShootingFirst = false;
  int score = 0;
  public Player(int playerWidth) {
    
    playerSpeed = 5;
    xPlayer = (int) width / 2;
    this.playerWidth = playerWidth;
    heightOffGround = height - 10 - playerWidth / 2;
  }

  void showPlayer() {
    fill(255, 30, 30);
    rect(xPlayer - playerWidth / 2, heightOffGround, playerWidth, 18);
  }

  void changePlayerPosition() {

    xPlayer = (xPlayer - playerWidth / 2) <= 0 ? 0 + playerWidth : xPlayer;
    xPlayer = (xPlayer + playerWidth / 2) >= width ? width-playerWidth : xPlayer;
    if (keyPressed && key == CODED) {
      xPlayer = keyCode == RIGHT ? xPlayer + playerSpeed : xPlayer;
      xPlayer = keyCode == LEFT ? xPlayer - playerSpeed : xPlayer;
    }
  }
  void shotSomething() {

    if (keyPressed && key == ' ' && !isShooting) {
      isShootingFirst = true;
      isShooting = true;
      xBullet = xPlayer;
      yBullet = heightOffGround;

    }
    if (isShooting) {
      
      fill(0, 250, 0);
      rect(xBullet, yBullet, 5, 5);
      yBullet -= 10;
      isShooting = yBullet <= 0 ? false : true;
    }
    
  }
}
//PLAYER class ENDS
