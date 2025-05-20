class RocketJump extends MiniGame {
  int latch = 0;
  int moonY = height/ 7;
  int moonX = width/7;
  int rocketX = moonX;
  int rocketY = height * 5/7;
  int rocketW = 75;
  int rocketH = 150;
  int rocketLaunchDistance = ((height * 5/7) - height/7);
  int moonSize = 250;
  int groundX = width/2;
  int groundY = 1000;
  int groundL = 1920;
  int groundH = 300;
  
  RocketJump(boolean objStart, String name, double timerLength) {
    super(objStart, name, timerLength);
  }
  
  public void reset() {
    super.reset();
    rocketY = height * 5/7;
  }
  
    public void play() {
    super.play();
    // Put your minigame logic here.
    background(0);
    createMoon();
    createGround();
    createRocket();
    rocketLaunch();
    landed();
    
    if (this.objectiveComplete == true) {
      background(0, 255, 0);
      textAlign(CENTER);
      fill(0);
      textSize(200);
      text("You WIN!!!", width/2, height /2 );
    }
  }
  
  public void createMoon() {
    fill(255);
    circle(moonX, moonY, moonSize);
  }
  
  public void createGround() {
    fill(0, 255, 0);
    rectMode(CENTER);
    rect(groundX, groundY, groundL, groundH);
  }
  
  public void createRocket() {
   fill(180);
   rectMode(CENTER);
   rect(rocketX, rocketY, rocketW, rocketH);
   fill(100);
   triangle(rocketX + 40, rocketY - 75, rocketX - 40, rocketY - 75, rocketX, rocketY - 110);
  }
  
  public void rocketLaunch() {
    if (config.keys[0] && rocketY > moonY + 160 && latch == 0) {
      rocketY -= rocketLaunchDistance/16;
      latch = 1;
    }
    else if(!keyPressed){
      latch = 0;
    }
    
  }
  
  public void landed() {
    if (rocketY < moonY + 160) {
      this.objectiveComplete = true;
    }
  }
}
