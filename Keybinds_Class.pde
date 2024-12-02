public class Keybinds {
  //Temp place holder for selection controls
  public int x; // Cancel button
  public int z; // Confirm button
  public int enter; // Pause & Resume
  //Movement buttons
  public int up;
  public int down;
  public int left;
  public int right;
  
  public Keybinds (int x, int z, int enter, int up, int down, int left, int right) {
    this.x = x;
    this.z = z;
    this.enter = enter;
    this.up = up;
    this.down = down;
    this.left = left;
    this.right = right;
  }
  
  public void upButton() {
   if (keyPressed) {
      if (key == CODED){
        if (keyCode == UP) {
          this.up = 1;
        }
        
        if (keyCode == DOWN) {
          this.down = 1;
        }
        
        if (keyCode == RIGHT) {
          this.right = 1;
        }
        
        if (keyCode == LEFT) {
          this.left = 1;
        }

      }  
   } else {
     this.up = 0;
     this.down = 0;
     this.right = 0;
     this.left = 0;
   
  }
    
}

}



  
  
