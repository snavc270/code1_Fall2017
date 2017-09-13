void setup(){
}

void draw(){
  //int sum = 4+5; 
  //int sum2 = 5+5; 
  //println(sum); 
  //println(sum2); 
  println(addNumbers(4,5)); 
  println(addNumbers(int(random(0,3)), 6)); 
}

int addNumbers(int a, int b){
  return a+b; 
}