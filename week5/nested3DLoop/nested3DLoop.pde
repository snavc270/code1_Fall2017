void setup(){
  size(600, 600, P3D); 
  noStroke(); 
}

void draw(){
  lights(); 
  background(0); 
  
  translate(width/2, height/2); 
  rotateX(radians(mouseX)); 
  rotateY(radians(mouseY)); 
  //first write our for loops 
  for(int i = -5; i<5; i++){
    for(int j = -5; j < 5; j++){
      for(int k = -5; k < 5; k++){
        pushMatrix();
        translate(i*100, j*100, k*100); 
        rotateX(i + frameCount* 0.01); 
        rotateY(j + frameCount* 0.01); 
        rotateZ(k + frameCount* 0.01); 
        box(20); 
        fill(map(i, -5, 5, 0, 255), map(j, -5, 5, 0, 255), map(k, -5, 5, 0, 255));
        popMatrix(); 
      }
    }
  }
}