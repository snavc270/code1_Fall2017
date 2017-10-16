// Example 15-14: "Pointillism"

PImage img;
int pointillize = 16;

void setup() {
  size(800,1000);
  img = loadImage("chuckie.jpg");
  background(255);
  smooth();
}

void draw() {
  
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Back to shapes! Instead of setting a pixel, we use the color 
  // from a pixel to draw a circle.
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize); 
}