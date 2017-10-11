int numPos = 50; 
int [] xPos= new int[numPos]; 
int [] yPos= new int [numPos]; 

void setup() {

  size(500,500); 
  smooth(); 
  noStroke(); 
  
  
  
  for (int i= 0; i<numPos; i++) {
     xPos[i] = 0;
     yPos[i] = 0;
     
    
  }
}

void draw() {
  background(255); 
  //shifts the array values
  for (int i = 0; i< numPos-1; i++) {
    xPos[i]= xPos[i+1]; 
    yPos[i]= yPos[i+1]; 
  }
   //nav for cirlces to follow mouse
   xPos[numPos-1] = mouseX; 
   yPos[numPos-1] = mouseY; 
   
   for( int i= 0; i< numPos; i++) {
     fill(0, random(255), random(255));  
     ellipse(xPos[i], yPos[i], 50, 50); 
    
  }

}