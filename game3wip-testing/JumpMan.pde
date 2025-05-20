class JumpMan extends MiniGame {
  int playerX = width/2;
  int playerY = 100;
  int stuckLanding = 0;
  int trampolineX = 100;
  int trampolineY = height * 9/10;
  int landingZone;
  
  
  JumpMan(boolean objStart, String name, double timerLength) {
    super(objStart, name, timerLength);
  }

  public void reset() {
    super.reset();
    // Put what your minigame needs to reset each time it is played here. 
  }

  public void play() {
    super.play();
    // Put your minigame logic here.
    background(20, 175, 253);

  }
  
  public void gravity() {
    if (playerY <= trampolineY) {
      playerY += 30;
    }
  }
  
  public void landing() {
    
  }
  
}
