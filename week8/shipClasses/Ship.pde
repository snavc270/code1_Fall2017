class Ship{
  color col; 
  int velX;
  float velY; 
  int rate; 
  int posX, posY;
  
  Ship(){
    col = color(random(255), random(255), random(255)); 
    velX = int (random(1, 10)); 
    velY = int (random(1, 2)); 
    rate = int (random(5, 20)); 
    posX = int (random(0, width)); 
    posY = int (random(0, height));
  }
  
  void drawShip(){
    fill(col); 
    
    ellipse(posX, posY, 50, 20); 
    ellipse(posX, posY-10, 20, 20); 
  }
  
  void floatShip(){
    posX += velX; 
    posY += int(sin(frameCount/rate) * 2); 
    if(posX > width && velX > 0){
      posX = -20; 
    }
  }
}