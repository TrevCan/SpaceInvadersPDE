Player player;
boolean keyReleased;
void setup() {
  frameRate(50);
  size(500, 500);
  player=new Player(10);
}
void draw() {
  background(0);
  player.changePlayerPosition();
  player.showPlayer();
  player.shoot();
  println();
}


//class player, controls player movement, shows
//'player', controls/shows 'bullet'
class Player {
  int xP, xB, yB, playerWidth, heightOffGround;
  boolean isShooting=false;
  public Player(int playerWidth) {
    xP = (int)width/2;
    this.playerWidth = playerWidth;
    heightOffGround = height-10-playerWidth/2;
  }
  void showPlayer() {
    fill(255, 30, 30);
    rect(xP-playerWidth/2, heightOffGround, 10, 10);
  }
  void changePlayerPosition() {
    if (keyPressed&& key==CODED) {
      xP = keyCode==RIGHT? xP+5:xP;
      xP = keyCode==LEFT? xP-5:xP;
    }
    xP = (xP-playerWidth/2)<=0? 0+playerWidth:xP;
    xP = (xP+playerWidth/2)>=width? width-playerWidth:xP;
  }
  void shoot() {
    if (keyPressed && key==' ' && !isShooting/* && !keyReleased*/) {
    if (!isShooting) {
      
        xB = xP;
        fill(0, 250, 0);
        rect(xB, yB, 5, 5);
      }
    }
  }
}
/*
void keyReleased(){
  keyReleased = keyCode==RIGHT? true : false;
  keyReleased = keyCode==LEFT? true: false;
}
*/
