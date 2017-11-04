// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

//single attraction point 
Mover mover; 
Attractor a; 

void setup(){
   size(500, 500); 
   mover = new Mover(random(.1, 2), random(width), random(height)); 
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

  PVector force = a.attract(mover); 
  
  mover.applyForce(force); 
  mover.update(); 
  mover.display(); 
  
}

void mousePressed() {
  a.clicked(mouseX, mouseY);
}

void mouseReleased() {
  a.stopDragging();
}