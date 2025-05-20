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
  public int direction;
  public int confirm;
  public int cancel;
  
  /*public Keybinds (int direction, int confirm, int cancel ) {
    this.direction = direction;
    this.confirm = confirm;
    this.cancel = cancel;
  }*/
  
  public Keybinds (int x, int z, int enter, int up, int down, int left, int right) {
    this.x = x;
    this.z = z;
    this.enter = enter;
    this.up = up;
    this.down = down;
    this.left = left;
    this.right = right;
  }
  
  public void upButtonPressed() {
   if (keyPressed) {
      if (key == CODED){
        if (keyCode == UP) {
          this.up = 1;
        }
      } 
   } 
   else {
        this.up = 0;
      }
  }  
  
  public void downButtonPressed() {
   if (keyPressed) {
      if (key == CODED){
        if (keyCode == DOWN) {
          this.down = 1;
        }
      }
      } else {
        this.down = 0;
   }
  }
  
  public void leftButtonPressed() {
   if (keyPressed) {
      if (key == CODED){
        if (keyCode == LEFT) {
          this.left = 1;
        }
      } 
   }else {
        this.left = 0;
      }
  }
  
  public void rightButtonPressed() {
   if (keyPressed) {
      if (key == CODED){
        if (keyCode == RIGHT) {
          this.right = 1;
        }
      } 
      }else {
        this.right = 0;
   }
  }  
  
  public void zButtonPressed() {
   if (keyPressed) {
      if (key == 'z' || key == 'Z'){
          this.z = 1;
      } 
      }else {
        this.z = 0;
   }
  }
  
   public void xButtonPressed() {
   if (keyPressed) {
      if (key == 'x' || key == 'X'){
          this.x = 1;
      }
      }else {
        this.x = 0;
   }
   
  }
  
  public void enterButtonPressed() {
   if (keyPressed) {
      if (key == CODED){
        if (keyCode == ENTER) {
          this.enter = 1;
        }
      } 
      }else {
        this.enter = 0;
   }
  }    
  
}
    





  
  
