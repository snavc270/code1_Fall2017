int num = 100; 
//here we are estabilishing a one dimensional array (like a storage container) to store
//the values of our x position for our shapes

int [] xPos = new int[100]; 
int size = 10; 
void setup(){
  size (600, 600); 
  background(0); 
  noStroke(); 
  smooth(); 
  //we technically only need one for loop here. 
  for(int i = 0; i< num; i++){
    xPos[i] = i * size; 
  } 
}

void draw(){
  for(int i = 0; i< num; i++){
    for(int j = 0; j< num; j++){
      ellipse(xPos[i], 100, size, size); 
    }
  }
  
  //how would we do this in two dimensions? 
  
}