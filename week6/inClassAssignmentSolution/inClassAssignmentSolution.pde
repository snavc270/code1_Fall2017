int x; 
int y; 
int x2, y2; 
int size; 
float dist; 
boolean sizeClicked; 
boolean shapeClicked; 
color sizeColor; 
color shapeColor; 
void setup(){
  size(600, 600); 
  x = width/2; 
  y = 100; 
  x2= width/2; 
  y2= 500; 
  size = 10; 
}

void draw(){
  fill(255); 
  if(sizeClicked){
    drawSquares();
    sizeColor = color(255, 255, 0); 
  }else{
    drawCircles(); 
    sizeColor = color(0, 255, 0); 
  }
  
  if(shapeClicked){
    mapSize();
    shapeColor = color(0, 0, 255); 
  }else{
    size = 10; 
    shapeColor = color(255, 0, 0); 
  }
  
  //size button 
  fill(sizeColor); 
  ellipse(x, y, 100,100);  
  //shape button 
  fill(shapeColor); 
  ellipse(x2, y2, 100, 100); 
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    sizeClicked = !sizeClicked; 
  }
  if(calcDistance(x2, y2) <=50){
    shapeClicked =!shapeClicked; 
  }
}

void drawSquares(){
  for(int i = 0; i<width/size; i++){
    for(int j = 0; j<height/size; j++){
        rect(i*size, j*size, size, size); 
    }
  }
}
void drawCircles(){
  for(int i = 0; i<width/size; i++){
    for(int j = 0; j<height/size; j++){
        ellipse(i*size, j*size, size, size); 
    }
  }
}

void mapSize(){
  size = int(map(mouseX, 0, width, 10, 100)); 
}
float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}