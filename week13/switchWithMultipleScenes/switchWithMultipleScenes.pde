int sceneNumber; 

void setup(){
  size(500, 500); 
}

void draw(){
  switch(sceneNumber){
    case 0: 
    scene0(); 
    break; 
    
    case 1:
    scene1(); 
    break; 
    
    case 2: 
    scene2(); 
    break; 
    
    case 3: 
    sceneNumber = 0; 
  }
}

void mousePressed(){
  sceneNumber++; 
}