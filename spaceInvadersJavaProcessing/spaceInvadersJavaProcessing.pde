import ddf.minim.*; 

Minim minim, minim2, minim3;
AudioPlayer backgroundMusic, shoots, beenShot;
Player player;
//Block block;
Block[][] obstacles = new Block[5][6];
boolean keyReleased;

void setup() {
  minim = new Minim(this);
  minim2 = new Minim(this);
  minim3 = new Minim(this);
  backgroundMusic = minim.loadFile("C:/Users/Buen Dia/Documents/GitHub/SpaceInvadersPDE/spaceInvadersJavaProcessing/sounds/background_music.mp3");
  shoots = minim2.loadFile("C:/Users/Buen Dia/Documents/GitHub/SpaceInvadersPDE/spaceInvadersJavaProcessing/sounds/shooting.wav");
  beenShot = minim3.loadFile("C:/Users/Buen Dia/Documents/GitHub/SpaceInvadersPDE/spaceInvadersJavaProcessing/sounds/shotSomething.wav");
  
  frameRate(50);
  size(500, 500);
  player = new Player(26);
  
  backgroundMusic.loop();
  
  //block = new Block(50, 50, 20, 10);
  for(int i = 0; i<obstacles.length; i++){
    for(int j = 0; j<obstacles[0].length; j++){
      int rectObstaclesX = 50 + 60*i;
      int rectObstaclesY = 50 + 10*j + 20*j;
      obstacles[i][j] = new Block(rectObstaclesX,rectObstaclesY,20,10);
    }
  }
  println(obstacles.length);  //column length
  println(obstacles[0].length); //row length
}
void draw() {
  
  background(0);
  for(int i = 0; i<obstacles.length; i++){
    for(int j = 0; j<obstacles[0].length; j++){
      obstacles[i][j].doEverything();
      if(obstacles[i][j].hasBeenShot){
        beenShot.play();
        beenShot.rewind();
      }
      obstacles[i][j].hasBeenShot = false;
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
  
  //println(obstacles.length);
}

void keyPressed(){
  if(key == ' '){
    shoots.play();
    shoots.rewind();
  }
}
