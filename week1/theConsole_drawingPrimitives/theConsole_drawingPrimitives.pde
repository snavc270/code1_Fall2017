int w; 
int h; 
float myFloat; 
String myString; 

void setup(){
  myString = "Hello Console"; 
  //println(myString); 
  w = 100; 
  h = 200; 
  size(500, 500);
  background(100, 0, 255); 
  noStroke(); 
  //frameRate(.5); 
  textSize(24); 
}

void draw(){
  //println("Hello Console"); 
  //println("Hi Back"); 
  rectMode(CENTER); 
  fill(random(0,255), random(0,255), random(0,255)); 
  rect(width*.25, height*.25, w, h);
  
  fill(0, 200, 200);
  ellipse(width*.25, height*.25, 50, 50);
  
  text(myString, width/2, height/2); 
}