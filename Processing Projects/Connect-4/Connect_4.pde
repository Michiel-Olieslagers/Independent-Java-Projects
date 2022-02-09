table tb;
void setup(){
  size(800,800);
  tb = new table(7,6);
}
void draw(){
  background(255);
  tb.display();
  int won = tb.checkWin();
  if(won != 0){
    String winner = "Player " + str(won) + " has won!";
    fill(0);
    textSize(24);
    text(winner, 500,100);
    fill(255);
    noLoop();
  }
}
void mousePressed(){
  tb.checkClick(mouseX,mouseY);
}
