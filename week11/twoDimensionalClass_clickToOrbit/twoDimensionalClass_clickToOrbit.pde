int num = 100; 

//here we are creating a single object from our Particle class; 
Particle myParticle; 
//here we are creating a 2D array objects from our Particle class; 
Particle [][] particles = new Particle[num][num]; 

int size = 25; 

boolean [][] clicked = new boolean[num][num]; 

void setup(){
  size(600, 600); 
  myParticle = new Particle(width/2, height/2); 
  
  //initializing particles for our 2D particle array 
  //we use for loops here so we don't have to initialize 1000 objects
  for(int i = 0; i< num; i++){
    for(int j = 0; j< num; j++){
      particles[i][j] = new Particle(i*size, j*size); 
      clicked[i][j] = false; 
    }
  }
}

void draw(){
  background(0); 
  
  //to call the methods from our class, we need to use dot notation
  //here we call the display and orbit methods 
  //we plug in a color parameter, and a -1 to make the orbit counter clockwise
  myParticle.display(color(0, 0, 255)); 
  myParticle.orbit(-1); 
  
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
      particles[i][j].display(color(255));
      
      if(clicked[i][j]){
        if((i+j) % 2 == 0){
          particles[i][j].orbit(1);
        }else{
          particles[i][j].orbit(-1); 
        }
      }else{
        particles[i][j].orbit(0);
      }
    }
  }
}

void mousePressed(){
  
  for(int i = 0; i<num; i++){
    for(int j =0; j<num; j++){
      if(mouseX>=(i*size) && mouseX<((i+1)*size) && mouseY>=(j*size) && mouseY<((j+1)*size)){
        clicked[i][j] = !clicked[i][j]; 
      }
    }
  }
}