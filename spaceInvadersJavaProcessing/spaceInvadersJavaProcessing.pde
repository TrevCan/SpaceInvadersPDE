Player player;
//Block block;
Block[][] obstacles = new Block[5][6];
boolean keyReleased;
void setup() {
  frameRate(50);
  size(500, 500);
  player = new Player(10);
  //block = new Block(50, 50, 20, 10);
  for(int i = 0; i<obstacles.length; i++){
    for(int j = 0; j<obstacles[0].length; j++){
      int rectObstaclesX = 50 + 60*i;
      int rectObstaclesY = 50 + 10*j + 20*j;
      obstacles[i][j] = new Block(rectObstaclesX,rectObstaclesY,20,10);
    }
  }
  println(obstacles[0][0].getxPosition());  //row length
  println(obstacles[0].length); //column length
}
void draw() {
  background(0);
  for(int i = 0; i<obstacles.length; i++){
    for(int j = 0; j<obstacles[0].length; j++){
      obstacles[i][j].doEverything();
    }
  }
  
  player.changePlayerPosition();
  player.showPlayer();
  player.shotSomething();

  //block.doEverything();
  textSize(23);
  fill(255);
  textSize(32);
  text("Score: " + player.score, 10, 30);
  println(player.score);
  //println(obstacles.length);
}

//class player, controls player movement, shows
//'player', controls/shows 'bullet'

/*
class Playesr {
  int xP, xB, yB, playerWidth, heightOffGround;
  boolean isShooting=false;
  public Playesr(int playerWidth) {
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
    if (keyPressed && key==' ' && !isShooting) {
      if (!isShooting) {

        xB = xP;
        fill(0, 250, 0);
        rect(xB, yB, 5, 5);
      }
    }
  }
}
*/
