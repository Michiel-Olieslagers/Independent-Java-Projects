class Grid {
  private int xSize, size;
  public Grid(int xSize, int size) {
    this.xSize = xSize;
    this.size = size;
  }
  public void display(ArrayList<Letter> letters, int total) {
    for (int i = 0; i < xSize; i++) {
      for (int j = 0; j < 5; j++) {
        int count = 0;
        for (Letter letter : letters) {
          int val = checkPosition(letter, i, total);
          if (val != -5) {
            if (letter.getCoords()[j][i - val]) {
              fill(0);
            } else {
              fill(255);
            }
            count ++;
          }
        }
        if(count == 0){
          fill(255);
        }
        square(i *  size + (width - xSize * size)/2, j * size + (height - 5 * size)/2, size);
      }
    }
    for (Letter letter : letters) {
      if (letter.getStartPos() == -5) {
        letter.setStartPos(total);
      } else {
        letter.setStartPos(letter.getStartPos() - 1);
      }
    }
  }
  public int checkPosition(Letter letter, int current, int total) {
    int returnVal = -5;
    if (letter.getStartPos() < 0) {
      if (current >= xSize + letter.getStartPos() + total) {
        returnVal = xSize + letter.getStartPos();
      }
      if (current <= letter.getStartPos() + 4) {
        returnVal = letter.getStartPos();
      }
    } else {
      if (current >= letter.getStartPos() && current <= letter.getStartPos() + 4) {
        returnVal = letter.getStartPos();
      }
    }
    return returnVal;
  }
  public int getXSize(){
    return xSize;
  }
}
