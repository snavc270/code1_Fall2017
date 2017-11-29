int [][] board; 
boolean [][] clicked; 
int cols = 3;  
int turn = 1; 
boolean player1 = true; 
boolean player1Wins = false; 
boolean player2Wins = false; 
boolean tie = false; 
boolean gameOver = false; 

String winner; 

void setup(){
  size(600, 300); 
  
  textSize(24); 
  
  board = new int[cols][cols]; 
  clicked = new boolean[cols][cols]; 
  
  for(int i = 0; i< cols; i++){
    for(int j = 0; j< cols; j++){
      board[i][j] = 0; 
      clicked[i][j] = false; 
    }
  }
}

void draw(){
  background(255); 
  
  if(!gameOver){
    //draw our tick tac toe board
    for(int i = 0; i< cols; i++){
      for(int j = 0; j< cols; j++){
        //draw our grid 
        noFill(); 
        rect(300+ i*100, j*100, 100, 100);
        
        //setup a state system to check if tile belongs to player 1 or player 2 
        
        //if state # of the board tile is 1, draw a 0 
        if(board[i][j] == 1){
          ellipse(300 + i*100 + 50, j*100 + 50, 100, 100); 
        }
        
        //if state # of the board tile is 2, draw an X 
        if(board[i][j] == 2){
          line(i*100+300,j*100,i*100 + 400,j*100+100);
          line(i*100+400,j*100,i*100 + 300,j*100+ 100);
        }
      }
    }
    fill(0); 
    if(player1){
      text("player 1's turn!", 0, 100); 
    }else{
      text("player 2's turn!", 0, 100);
    }
  }
  
  if(player1Wins){
    winner = "Player 1"; 
  }else if (player2Wins){
    winner = "Player 2"; 
  }
  
  if(player1Wins || player2Wins){
    gameOver = true; 
    text(winner + " Wins!!!", width*.4, height/2); 
  }
  
  if(tie){
    gameOver = true; 
    text("It's a tie!!!", width*.4, height/2); 
  }
  
  checkWinner(); 
  checkForTie(); 
  
  println(tie); 

}

void checkWinner(){
  //check both diagnols for a winner 
  if(board[0][0] == 1 && board[1][1] == 1 && board[2][2] == 1){
    player1Wins = true; 
  }else if(board[0][0] == 2 && board[1][1] == 2 && board[2][2] == 2){
    player2Wins = true; 
  }
  
  if(board[0][2] == 1 && board[1][1] == 1 && board[2][0] == 1){
    player1Wins = true; 
  }else if(board[0][2] == 2 && board[1][1] == 2 && board[2][0] == 2){
    player2Wins = true; 
  }
  
  for(int i = 0; i< cols; i++){
    //check rows for a winner 
    if(board[0][i] == 1 && board[1][i] == 1 && board[2][i] == 1){
      player1Wins = true; 
    }else if(board[0][i] == 2 && board[1][i] == 2 && board[2][i] == 2){
      player2Wins = true; 
    }
    
    //check columns for a winner 
    if(board[i][0] == 1 && board[i][1] == 1 && board[i][2] == 1){
      player1Wins = true; 
    }else if(board[i][0] == 2 && board[i][1] == 2 && board[i][2] == 2){
      player2Wins = true; 
    }
  }
}

void checkForTie(){
  for(int i = 0; i< cols; i++){
    for(int j = 0; j< cols; j++){
      if(board[i][j] == 0){
        tie = false; 
      }else{
        tie = true; 
      }
    }
  }
}
void mousePressed(){
  for(int i = 0; i< cols; i++){
    for(int j = 0; j< cols; j++){
      if(clicked[i][j] == false){
        if(mouseX>= 300+i*100 && mouseX <= (300 + (i+1)*100) && mouseY>=(j*100) && mouseY <= (j+1)*100){
          clicked[i][j] = true; 
          if(player1){
            board[i][j] = 1;  
          }else{
            board[i][j] = 2; 
          }
          player1 = !player1; 
        }
      }
    }
  } 
}