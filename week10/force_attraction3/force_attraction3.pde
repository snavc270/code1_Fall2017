// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

//single attraction point 
int num = 15; 
Mover [] mover = new Mover[num]; 
Attractor a; 

void setup(){
   size(500, 500); 
   for (int i = 0; i< num; i++){
     mover[i] = new Mover(random(.1, 1), random(width), random(height)); 
   }
   a = new Attractor(); 
   noStroke(); 
   smooth(); 
}

void draw(){
  fill(0, 70); 
  rect(0, 0, width, height); 
  
  
  a.display(); 
  a.drag();
  a.hover(mouseX, mouseY);

  for(int i = 0; i< num; i++){
    PVector force = a.attract(mover[i]);
    mover[i].applyForce(force); 
    mover[i].update(); 
    mover[i].display(); 
  }
  
}

void mousePressed() {
  a.clicked(mouseX, mouseY);
}

void mouseReleased() {
  a.stopDragging();
}