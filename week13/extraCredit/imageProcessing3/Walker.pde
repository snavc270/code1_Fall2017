class Walker{
  int xPos, yPos; 
  int xChange, yChange; 
  int counter = 0; 
  
  Walker(int _xPos, int _yPos){
    xPos = _xPos; 
    yPos = _yPos; 
   
  }
  
  void display(color posColor){
    fill(posColor); 
    rect(xPos, yPos, 5, 5);  
  }
  
  void update(){
    if(counter<100){
      xChange = int(random(-5, 5)); 
      yChange = int(random(-5, 5)); 
      xPos += xChange; 
      yPos += yChange; 
      counter ++; 
    }
  }
}