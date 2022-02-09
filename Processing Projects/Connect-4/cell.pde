class cell{
  int player;
  cell(){
    player = 0;
  }
  void display(){
    if(player != 0){
      if(player == 1){
        fill(255,255,0);
        circle(13,13,26);
      }
      else if(player == 2){
        fill(256,0,0);
        circle(13,13,26);
      }
    }
    fill(255);
  }
}
