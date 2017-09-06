void setup(){
  size(600, 600); 
  background(255); 
  smooth(); 
  fill(192); 
  noStroke(); 
  //rect(40, 40, 40, 40); 
  
  //pushMatrix(); 
  //translate(60,60); 
  //rectMode(CENTER); 
  //rotate(radians(45));
  //fill(0); 
  //rect(0, 0, 40, 40); 
  //popMatrix(); 
}

void draw(){
  //if whatever inside the parenthesis is true then 
  //do whatever is inside the curly brackets 
  
  if(frameCount % 10 == 0){
    fill(random(0,255), random(0, 255), random(0,255)); 
    pushMatrix(); 
    translate(30, 100); 
    rotate(radians(frameCount*4 % 360)); 
    //rect(0, 0, 80, 20); 
    ellipse(0, 0, 100, 400); 
    popMatrix(); 
  }
}