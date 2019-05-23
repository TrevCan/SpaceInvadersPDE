
//BLOCK class starts
var Block  = {
  
  //var xPosition;
  
  Block: function(xP, yP, widthRect, heightRect) {
    this.xPosition = 0;
    this.yPosition = 0;
    this.rectWidth = 0;
    this.rectHeight = 0;
    this.i = 0;
    this.isAlive = true;
    setxPosition(xP);
    setyPosition(yP);
    setRectWidth(widthRect);
    setRectHeight(heightRect);
    setIsAlive(true);
  },  
    show: function() {
    fill(0, 0, 255);
    rect(getxPosition() - getRectWidth() / 2, getyPosition() - getRectHeight() / 2, getRectWidth(), getRectHeight());
  },

    checkIfThereIsACollision: function() {
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
  },
  
    doEverything: function(){
    if(getIsAlive()){show();checkIfThereIsACollision();}
    /*else{
      println("block @ " + getxPosition() + ", " + getyPosition() + " is dead.");
    }*/
  },
  
  getxPosition: function (){
    var wut = xPosition;
    return wut;
  },
  
    setxPosition: function(value){
    this.xPosition = value;
  },
  getyPosition: function(){
    return yPosition;
  },
    setyPosition: function(value){
    this.yPosition = value;
  },
  getRectWidth: function(){
    
    return rectWidth;
  },
    setRectWidth: function(value){
    this.rectWidth = value;
  },
  getRectHeight: function(){
    
    return rectHeight;
  },
  setRectHeight: function(value){
    this.rectHeight = value;
  },
  getScore: function(){
    return score;
  },
  setScore: function(value){
    this.score = value;
  },
  getI: function(){
    return this.i;
  },
  setI: function(value){
    this.i = value;
  },
  getIsAlive: function(){
    return isAlive;
  },
  setIsAlive: function(value){
    this.isAlive = value;
  },
  
};
