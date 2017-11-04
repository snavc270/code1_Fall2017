
Walker w; 
int [] xPos; 
int [] yPos; 


void setup(){
  size(800, 600); 
  
  w = new Walker(width/2, height/2); 
  background(255); 

  xPos= new int[100];
  yPos= new int[100]; 
  
  
  
}


void draw(){
  
  for (int i = 0; i<xPos.length; i++){
    xPos[i] = w.x; 
  }
  
  for (int i= 0; i<yPos.length; i++){
    yPos[i] = w.y; 
  }
  
  w.step(); 
  
  for(int i = 0; i< 100; i ++){
    fill(0); 
    rect(xPos[i], yPos[i], 10, 10); 
  }
}