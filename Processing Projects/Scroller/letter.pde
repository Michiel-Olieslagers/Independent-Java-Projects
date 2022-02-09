class Letter{
  private boolean[][] coords = new boolean[5][5];
  private String letter;
  private int startPos;
  public Letter(String letter, int startPos){
    this.letter = letter;
    this.startPos = startPos;
    for(int i = 0; i < 5; i++){
      for(int j = 0; j < 5; j++){
        coords[i][j] = false;
      }
    }
    if(letter.equals("a") || letter.equals("A")){
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[1][4] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[2][3] = true;
      coords[2][4] = true;
      coords[3][0] = true;
      coords[3][4] = true;
      coords[4][0] = true;
      coords[4][4] = true;
    }
    else if(letter.equals("b") || letter.equals("B")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[1][0] = true;
      coords[1][2] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[2][3] = true;
      coords[3][0] = true;
      coords[3][3] = true;
      coords[4][0] = true;
      coords[4][1] = true;
      coords[4][2] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("c") || letter.equals("C")){
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[2][0] = true;
      coords[3][0] = true;
      coords[4][1] = true;
      coords[4][2] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("d") || letter.equals("D")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[1][0] = true;
      coords[1][3] = true;
      coords[2][0] = true;
      coords[2][3] = true;
      coords[3][0] = true;
      coords[3][3] = true;
      coords[4][0] = true;
      coords[4][1] = true;
      coords[4][2] = true;
    }
    else if(letter.equals("e") || letter.equals("E")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[3][0] = true;
      coords[4][0] = true;
      coords[4][1] = true;
      coords[4][2] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("f") || letter.equals("F")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[3][0] = true;
      coords[4][0] = true;
    }
    else if(letter.equals("g") || letter.equals("G")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[2][0] = true;
      coords[2][2] = true;
      coords[2][3] = true;
      coords[3][0] = true;
      coords[3][3] = true;
      coords[4][0] = true;
      coords[4][1] = true;
      coords[4][2] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("h") || letter.equals("H")){
      coords[0][0] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[1][3] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[2][3] = true;
      coords[3][0] = true;
      coords[3][3] = true;
      coords[4][0] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("i") || letter.equals("I")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[1][1] = true;
      coords[2][1] = true;
      coords[3][1] = true;
      coords[4][0] = true;
      coords[4][1] = true;
      coords[4][2] = true;
    }
    else if(letter.equals("j") || letter.equals("J")){
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][3] = true;
      coords[2][3] = true;
      coords[3][3] = true;
      coords[4][1] = true;
      coords[4][2] = true;
    }
    else if(letter.equals("k") || letter.equals("K")){
      coords[0][0] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[1][2] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[3][0] = true;
      coords[3][2] = true;
      coords[4][0] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("l") || letter.equals("L")){
      coords[0][0] = true;
      coords[1][0] = true;
      coords[2][0] = true;
      coords[3][0] = true;
      coords[4][0] = true;
      coords[4][1] = true;
      coords[4][2] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("m") || letter.equals("M")){
      coords[0][0] = true;
      coords[0][4] = true;
      coords[1][0] = true;
      coords[1][1] = true;
      coords[1][3] = true;
      coords[1][4] = true;
      coords[2][0] = true;
      coords[2][2] = true;
      coords[2][4] = true;
      coords[3][0] = true;
      coords[3][4] = true;
      coords[4][0] = true;
      coords[4][4] = true;
    }
    else if(letter.equals("n") || letter.equals("N")){
      coords[0][0] = true;
      coords[0][4] = true;
      coords[1][0] = true;
      coords[1][1] = true;
      coords[1][4] = true;
      coords[2][0] = true;
      coords[2][2] = true;
      coords[2][4] = true;
      coords[3][0] = true;
      coords[3][3] = true;
      coords[3][4] = true;
      coords[4][0] = true;
      coords[4][4] = true;
    }
    else if(letter.equals("o") || letter.equals("O")){
      coords[0][1] = true;
      coords[0][2] = true;
      coords[1][0] = true;
      coords[1][3] = true;
      coords[2][0] = true;
      coords[2][3] = true;
      coords[3][0] = true;
      coords[3][3] = true;
      coords[4][1] = true;
      coords[4][2] = true;
    }
    else if(letter.equals("p") || letter.equals("P")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[1][0] = true;
      coords[1][3] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[3][0] = true;
      coords[4][0] = true;
    }
    else if(letter.equals("q") || letter.equals("Q")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[1][3] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[2][3] = true;
      coords[3][3] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("r") || letter.equals("R")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[1][3] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[2][3] = true;
      coords[3][0] = true;
      coords[3][2] = true;
      coords[4][0] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("s") || letter.equals("S")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[2][0] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[2][3] = true;
      coords[3][3] = true;
      coords[4][0] = true;
      coords[4][1] = true;
      coords[4][2] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("t") || letter.equals("T")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[0][4] = true;
      coords[1][2] = true;
      coords[2][2] = true;
      coords[3][2] = true;
      coords[4][2] = true;
    }
    else if(letter.equals("u") || letter.equals("U")){
      coords[0][0] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[1][3] = true;
      coords[2][0] = true;
      coords[2][3] = true;
      coords[3][0] = true;
      coords[3][3] = true;
      coords[4][1] = true;
      coords[4][2] = true;
    }
    else if(letter.equals("v") || letter.equals("V")){
      coords[0][0] = true;
      coords[0][4] = true;
      coords[1][0] = true;
      coords[1][4] = true;
      coords[2][0] = true;
      coords[2][4] = true;
      coords[3][1] = true;
      coords[3][3] = true;
      coords[4][2] = true;
    }
    else if(letter.equals("w") || letter.equals("W")){
      coords[0][0] = true;
      coords[0][4] = true;
      coords[1][0] = true;
      coords[1][4] = true;
      coords[2][0] = true;
      coords[2][4] = true;
      coords[3][0] = true;
      coords[3][2] = true;
      coords[3][4] = true;
      coords[4][1] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("x") || letter.equals("X")){
      coords[0][0] = true;
      coords[0][4] = true;
      coords[1][1] = true;
      coords[1][3] = true;
      coords[2][2] = true;
      coords[3][1] = true;
      coords[3][3] = true;
      coords[4][0] = true;
      coords[4][4] = true;
    }
    else if(letter.equals("y") || letter.equals("Y")){
      coords[0][0] = true;
      coords[0][3] = true;
      coords[1][0] = true;
      coords[1][3] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[2][3] = true;
      coords[3][3] = true;
      coords[4][1] = true;
      coords[4][2] = true;
      coords[4][3] = true;
    }
    else if(letter.equals("z") || letter.equals("Z")){
      coords[0][0] = true;
      coords[0][1] = true;
      coords[0][2] = true;
      coords[0][3] = true;
      coords[1][3] = true;
      coords[2][1] = true;
      coords[2][2] = true;
      coords[3][1] = true;
      coords[4][0] = true;
      coords[4][1] = true;
      coords[4][2] = true;
      coords[4][3] = true;
    }
    else if(letter.equals(".")){
      coords[4][0] = true;
    }
    else if(letter.equals("|")){
      coords[0][2] = true;
      coords[1][2] = true;
      coords[2][2] = true;
      coords[3][2] = true;
      coords[4][2] = true;
    }
  }
  public boolean[][] getCoords(){
    return coords;
  }
  public void setStartPos(int startPos){
    this.startPos = startPos;
  }
  public int getStartPos(){
    return this.startPos;
  }
}
