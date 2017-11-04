class Walker{
    int x, y; 
    
    Walker(int x, int y){
     this.x= x; 
     this.y = y; 
    }
    
    void render(){
      stroke(0); 
      point(x,y); 
    }
    
    void step(){
      int choice = int(random(4));
      
      if(choice == 0){
        this.x+=5; 
      }else if (choice== 2){
        this.x-=5; 
      }else if (choice ==3){
        this.y+=5; 
      }else{
        this.y-=5; 
      }
      
      this.x = constrain(this.x, 0, width-1); 
      this.y = constrain(this.y,0, height-1); 
    }
}