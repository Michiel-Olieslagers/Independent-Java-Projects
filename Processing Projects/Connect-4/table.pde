class table {
  ArrayList pos;
  int xSize, ySize;
  boolean currentPlayer;
  table(int x, int y) {
    pos = new ArrayList();
    xSize = x;
    ySize = y;
    for (int a = 0; a < xSize; a++) {
      for (int b = 0; b < ySize; b++) {
        cell cell;
        cell = new cell();
        pos.add(cell);
      }
    }
    currentPlayer = false;
  }
  void display() {
    stroke(0);
    strokeWeight(3);
    for (int x = 0; x < xSize; x++) {
      circle(x *50 + 125, 50, 26);
    }
    for (int x = 0; x < xSize; x++) {
      for (int y = 0; y < ySize; y++) {
        square(x * 50 + 100, y *50 + 100, 50);
      }
    }
    for (int x = 0; x < pos.size(); x++) {
      if (((cell)(pos.get(x))).player != 0) {
        int xPos = floor(x / ySize); 
        int yPos = x - xPos * ySize;
        translate(xPos * 50 + 113, yPos * 50 + 113);
        ((cell)(pos.get(x))).display();
        translate(-xPos * 50 - 113, -yPos * 50 - 113);
      }
    }
  }
  void checkClick(int x, int y) {
    for (int z = 0; z < xSize; z++) {
      if (x > z * 50 + 112 && x < z * 50 + 138 && y > 37 && y < 63) {
        setPiece(z);
      }
    }
  }
  void setPiece(int x) {
    int current = -1;
    while (current < ySize - 1 && ((cell)(pos.get(x*ySize + (current + 1)))).player == 0) {
      current ++;
    }
    if (current > -1) {
      if (currentPlayer == true) {
        ((cell)(pos.get(x*ySize + current))).player = 1;
        currentPlayer = false;
      } else if (currentPlayer == false) {
        ((cell)(pos.get(x*ySize + current))).player = 2;
        currentPlayer = true;
      }
    }
  }
  int checkWin() {
    for (int x = 0; x < xSize; x++) {
      for (int y = 0; y < ySize; y++) {
        if (((cell)(pos.get(x * ySize + y))).player != 0) {
          int currentX = x;
          int currentY = y;
          int counter = 1;
          int player = ((cell)(pos.get(x * ySize + y))).player;
          while (currentY + 1 < ySize && ((cell)(pos.get(currentX * ySize + currentY + 1))).player == player) {
            counter ++;
            currentY ++;
          }
          if (counter >= 4) {
            if (currentPlayer) {
              return 1;
            } else {
              return 2;
            }
          }
        
        currentX = x;
        currentY = y;
        counter = 1;
        while (currentX + 1 < xSize && ((cell)(pos.get((currentX + 1) * ySize + currentY))).player == player) {
            counter ++;
            currentX ++;
          }
          if (counter >= 4) {
            if (currentPlayer) {
              return 1;
            } else {
              return 2;
            }
          }
        
        currentX = x;
        currentY = y;
        counter = 1;
        while (currentX + 1 < xSize && currentY + 1 < ySize && ((cell)(pos.get((currentX + 1) * ySize + currentY + 1))).player == player) {
            counter ++;
            currentX ++;
            currentY ++;
          }
          if (counter >= 4) {
            if (currentPlayer) {
              return 1;
            } else {
              return 2;
            }
          }
        
        currentX = x;
        currentY = y;
        counter = 1;
        while (currentX + 1 < xSize && currentY - 1 >= 0 && ((cell)(pos.get((currentX + 1) * ySize + currentY - 1))).player == player) {
            counter ++;
            currentX ++;
            currentY --;
          }
          if (counter >= 4) {
            if (currentPlayer) {
              return 1;
            } else {
              return 2;
            }
          }
        }
      }
    }
    return 0;
  }
}
