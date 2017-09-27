void setup(){
  size(700, 700); 
  noStroke(); 
}

void draw(){
  background(255); 
  
  for (int i = 0; i <=width; i += width/15){
    for (int j = 0; j <= height; j += height/15){
      //figure out distance between mouseX, mouseY
      //and our ellipses 
      float dist = dist(mouseX, mouseY, i, j); 
      
      float c = map(dist, 0, 500, 255,100); 
      float s = map(dist, 0, width, 10, 50); 
      
      fill(c, 100, 100); 
      ellipse(i, j, s, s);   
    }
  }
}