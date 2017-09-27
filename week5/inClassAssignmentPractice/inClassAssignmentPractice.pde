//variables we will need? 
//button parameters 
//boolean to detect if button is pressed 

//numbers to manipulate
//result variable to store the product/sum/ etc. 
float result; 
int x, y; 
boolean buttonClicked; 
int size; 
float dist; 
float num1, num2; 

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 50; 
  background(0); 
}

void draw(){
    //first step = writing a math function 
    //result = multiple(4.0, 5.0); 
    //println(result); 
    
    result = multiply(num1, num2); 
    //displaying the result of that function 
    textSize(32); 
    //text(result, width/2, height/2); 
    
    //only displaying result when button is clicked 
    if(buttonClicked){
         background(0);
         text(num1 + "x" + num2 + "=" + result, 0, height*.8);
         fill(0, 255, 0); 
    }else{
       fill(255, 0, 0); 
    }
    
    //second step = creating our button 
   
    ellipse(x, y, size, size);  
}

void mousePressed(){
  dist = dist(mouseX, mouseY, x, y); 
  if(dist <= size/2){
    buttonClicked = !buttonClicked; 
    num1 = random(0,100); 
    num2 = random(0,100); 
  }
}

float multiply (float a, float b){
    float product; 
    product = a * b; 
    return product; 
}