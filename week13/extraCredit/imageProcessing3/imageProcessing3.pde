PImage doge;
int wCounter; 
//need to create and arrayList of Walkers 
ArrayList<Walker> walkers = new ArrayList<Walker>(); 

void setup() {      
  size(500,500);  
  background(255); 
  doge = loadImage("doge.jpg"); 
  noStroke(); 
}

void draw(){
  for(int i = 0; i<walkers.size(); i++){
    Walker w = walkers.get(i); 
    color posColor = doge.get(w.xPos, w.yPos); 
    w.update(); 
    w.display(posColor);  
  }
  
  ////////////////////////////////////////////////////////////////////
  //EXTRA CREDIT
  //GENERATE MULTIPLE WALKER FOR THE SKETCH 
  //I.E. CLICKING ON THE IMAGE SHOULD GENERATE ANOTHER RANDOM WALKER
  //HINT CREATE A CLASS OF WALKERS (WE DID THIS IN CLASS)
  
}

void mousePressed(){
  if(wCounter<5){
    walkers.add(new Walker(mouseX, mouseY)); 
    wCounter++; 
  }
}