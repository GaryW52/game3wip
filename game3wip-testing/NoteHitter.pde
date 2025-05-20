class NoteHitter extends MiniGame {
  int note1X = width/2;
  int note1Y = height * 1/4;
  int note2X = width * 11/16;
  int note2Y = height/2;
  int note3X = width * 7/8;
  int note3Y = height * 3/4;
  boolean noteOneHit;
  boolean noteTwoHit;
  boolean noteThreeHit;
  int moveLatch = 0;
  int hitLatch = 0;
  int playerX = width/16;
  int playerY = height/2; 
  int currentNote = 2;
  int hitNote = 0;
  int score = 0;
  int colorType1 = 255;
  int colorType2 = 255;
  int colorType3 = 255;

  NoteHitter(boolean objStart, String name, double timerLength) {
    super(objStart, name, timerLength);
  }

  public void reset() {
    super.reset();
      playerX = width/16;
      playerY = height/2;
      currentNote = 2;
      hitLatch = 0;
      moveLatch = 0;
      hitNote = 0;
      colorType1 = 255;
      colorType2 = 255;
      colorType3 = 255;
      score = 0;
  }

  public void play() {
    super.play();
    background(0);
    createPlayer();
    playerControls();
    createNote1();
    createNote2();
    createNote3();
    playerMoveSpeed();
    hitboxNote1();
    hitboxNote2();
    hitboxNote3();
    hitAll();
    
    if (this.objectiveComplete == true) {
      background(0, 255, 0);
      textAlign(CENTER);
      fill(0);
      textSize(200);
      text("You WIN!!!", width/2, height /2 );
    }
  }
  
  public void playerControls() {
    if (keyPressed && moveLatch == 0) {
      if (config.keys[2] == true && currentNote == 2) {
        currentNote = 1;
        playerY = height * 1/4;
        moveLatch = 1;
      }
      if (config.keys[2] == true && currentNote == 3) {
        currentNote = 2;
        playerY = height/2;
        moveLatch = 1;
      }
      if (config.keys[4] == true && currentNote == 2) {
        currentNote = 3;
        playerY = height * 3/4;
        moveLatch = 1;
      }
      if (config.keys[4] == true && currentNote == 1) {
        currentNote = 2;
        playerY = height/2;
        moveLatch = 1;
      }
    }
    else if (!keyPressed) {
      moveLatch = 0;
    }
  }
  
  public void createPlayer() {
    fill(255 ,0, 0);
    rectMode(CENTER);
    rect(playerX, playerY, 100, 100);
  }
  
  public void createNote1() {
    fill(0 ,0, colorType1);
    rectMode(CENTER);
    rect(note1X, note1Y, 100, 100);
    if (hitNote == 1) {
      colorType1 = 180;
    }
  }
  
  public void createNote2() {
    fill(0 ,0, colorType2);
    rectMode(CENTER);
    rect(note2X, note2Y, 100, 100);
    if (hitNote == 2) {
      colorType2 = 180;
    }
  }
  
  public void createNote3() {
    fill(0 ,0, colorType3);
    rectMode(CENTER);
    rect(note3X, note3Y, 100, 100);
    if (hitNote == 3) {
      colorType3 = 180;
    }
  }
  
  public void playerMoveSpeed() {
    playerX += config.miniTimerMult * 10;
  }
  
  public void hitAll() {
    if (score == 3) {
      this.objectiveComplete = true;
    }
  }
  
  public void hitboxNote1() {
    if (currentNote == 1 && playerX >= note1X - 50 && playerX <= note1X + 50 && hitLatch == 0) {
      score += 1;
      hitNote = 1;
      hitLatch = 1;
    }
  }
  
  public void hitboxNote2() {
    if (currentNote == 2 && playerX >= note2X - 50 && playerX <= note2X + 50 && hitLatch <= 1) {
      score += 1;
      hitNote = 2;
      hitLatch = 2;
    }
  }
  public void hitboxNote3() {
    if (currentNote == 3 && playerX >= note3X - 50 && playerX <= note3X + 50 && hitLatch <= 2) {
      score += 1;
      hitNote = 3;
      hitLatch = 3;
    }
  }
}
