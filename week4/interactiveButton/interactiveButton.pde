//ball 
//position, size, speed, color 
//setup boundaries for the ball 
float xPos, yPos; 
float xVel, yVel; 
int radiusX, radiusY; 
int r, g, b; 

void setup() {
  size(600, 600); 
  background(0); 

  xVel= random(-5, 5); 
  yVel= random(-5, 5); 

  xPos = width/2; 
  yPos = height/2; 

  radiusX = 100;
  radiusY = 100;
}

void draw() {
  fill(r, g, b, 30);  
  rect(0, 0, width, height); 
  
  r = int(map(xPos, 0, width, 0, 255)); 
  g = int(map(yPos, 0, height, 0, 255)); 
  
  fill(255); 
  noStroke(); 
  ellipse(xPos, yPos, radiusX, radiusY); 

  xPos = xPos + xVel; 
  yPos = yPos + yVel; 

  if (xPos > width - radiusX/2 || xPos < 0 + radiusX/2) {
    xVel = xVel * -1;
    radiusY = 140; 
    //r = int(random(0, 255)); 
    //g = int(random(0, 255)); 
    //b = int(random(0, 255)); 
  }else{
    radiusY = 100; 
  }
  if (yPos > height - radiusY/2 || yPos < 0 + radiusY/2) {
    yVel = yVel * -1;
    radiusX = 140; 
    //r = int(random(0, 255)); 
    //g = int(random(0, 255)); 
    //b = int(random(0, 255));
  }else{
    radiusX = 100; 
  }
}

//move where I click my mouse 
//speed to change 

void mousePressed(){
   xPos = mouseX; 
   yPos = mouseY; 
   
   xVel = random(-5,5); 
   yVel = random(-5,5); 
  
   radiusX= 100; 
   radiusY= 100;
}