Ship [] ufo; 
int num = 20; 

void setup(){
  size(1000, 1000); 
  smooth(); 
  noStroke(); 
  background(0); 
  
  ufo = new Ship[num]; 
  
  for(int i =0; i< num; i++){
    ufo[i] = new Ship(); 
  }
}

void draw(){
  background(0); 
    for(int i =0; i<num; i++){
      ufo[i].drawShip(); 
      ufo[i].floatShip();  
    }
}