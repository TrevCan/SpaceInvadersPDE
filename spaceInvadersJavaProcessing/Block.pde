
//BLOCK class starts
class Block {
  int xPosition, yPosition;
  int rectWidth, rectHeight;
  int score = 0;
  int i = 0;
  boolean isAlive;
  public Block(int xP, int yP, int widthRect, int heightRect) {
    setxPosition(xP);
    setyPosition(yP);
    setRectWidth(widthRect);
    setRectHeight(heightRect);
    setIsAlive(true);
  }  
  void show() {
    fill(0, 0, 255);
    rect(getxPosition() - getRectWidth() / 2, getyPosition() - getRectHeight() / 2, getRectWidth(), getRectHeight());
  }

  void checkIfThereIsACollision() {
    /*if(player.isShooting){
     println("player is shooting P:");
     } else{println("nope");}*/
    if (player.isShooting) {
      println("**************************++");
      println("ishootingiguess");
      if (player.xB >= getxPosition() - getRectWidth() / 2 && (player.xB + 4) <= getxPosition() + getRectWidth() / 2 && player.yB<=getyPosition()+getRectHeight()) {
        println("has hit ball");
        player.isShooting = false;
        while (i<1) {
          player.score++; 
          setIsAlive(false);
          i++;
        }
      }
    } else {
      setI(0);
      println("not shooting");
    }
  }
  
  void doEverything(){
    if(getIsAlive()){show();checkIfThereIsACollision();}
    /*else{
      println("block @ " + getxPosition() + ", " + getyPosition() + " is dead.");
    }*/
  }
  
  int getxPosition(){
    return xPosition;
  }
  void setxPosition(int value){
    this.xPosition = value;
  }
  int getyPosition(){
    return yPosition;
  }
  void setyPosition(int value){
    this.yPosition = value;
  }
  int getRectWidth(){
    
    return rectWidth;
  }
  void setRectWidth(int value){
    this.rectWidth = value;
  }
  int getRectHeight(){
    
    return rectHeight;
  }
  void setRectHeight(int value){
    this.rectHeight = value;
  }
  int getScore(){
    return score;
  }
  void setScore(int value){
    this.score = value;
  }
  int getI(){
    return i;
  }
  void setI(int value){
    this.i = value;
  }
  boolean getIsAlive(){
    return isAlive;
  }
  void setIsAlive(boolean value){
    this.isAlive = value;
  }
  
}
