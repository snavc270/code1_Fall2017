String [] lines; 

int index = 0; 
int [] x;  
int [] y;  
int X, Y; 

void setup(){
  size(600, 600); 
  background(0); 
  //this is the text file we wrote in the export data example; 
  //should be located in a folder named data 
  lines = loadStrings("lines.txt"); 
  noSmooth();   
  
  //set up two arrays for our x and y coordinates 
  x = new int[lines.length]; 
  y = new int[lines.length]; 
}

void draw(){
  
  fill(0, 0, 255);
   
  if(index <lines.length){
    //for as many lines are in our data table, split the data wherever there is a tab (every column) 
    //store this in a string array called pieces 
    String[] pieces = split(lines[index], "\t"); 
    
    //if there are two columns in our pieces array
    if(pieces.length == 2){
      
      //X and Y act as a temporary storage for our coordinates
       X = int(pieces[0]); 
       Y = int(pieces[1]); 
       
       //we then set the values for our x and y arrays equal to those temporary values
       x[index] = X; 
       y[index] = Y; 
    }
    //if we print out the values for our x and y arrays, they should match our .txt file 
    print("x coordinate is: " + x[index] + " "); 
    println("y coordinate is: " + y[index]); 
    index++; 
    //increment through all of the lines of our data table 
  }
  
  beginShape(); 
  for(int i = 0; i<lines.length; i++){
    vertex(x[i], y[i]); 
    fill(0, 0, 255); 
    ellipse(x[i], y[i], 10, 10); 
  }
  endShape(); 
  
  ///////////////////////////////////////////////////////////////////////////
  //EXTRA CREDIT
  //RECREATE THE EXACT SHAPE THAT WAS GENERATED IN THE EXPORTING DATA SKETCH 
  //HINT STORE X AND Y COORDINATES IN AN ARRAY 
  //USE THESE AS YOUR VERTICES FOR YOUR SHAPE
  
}