String text = "This is supposed to be an advertisement | ";
Grid grid;
int total;
ArrayList<Letter> letters;
void setup(){
  size(750,750);
  grid = new Grid(150, 5);
  total = text.length() * 5;
  letters = new ArrayList<Letter>();
  int nextSpace = 0;
  for(int i = 0; i < text.length(); i++){
    String letter = text.substring(i, i + 1);
    int space = grid.getXSize() + 5 * i + nextSpace;
    if(i < text.length() - 1){
      if(letter.equals("a") || letter.equals("A") || letter.equals("m") || letter.equals("M") || letter.equals("t") || letter.equals("T") || letter.equals("n") || letter.equals("N") || letter.equals("v") || letter.equals("V") || letter.equals("w") || letter.equals("W") || letter.equals("x") || letter.equals("X") || letter.equals("t") || letter.equals("T")){
        nextSpace += 1;
        total += 1;
      }
    }
    if(i > 0){
      if(letter.equals("i") || letter.equals("I")){
        nextSpace -= 1;
        total -= 1;
      }
    }
    letters.add(new Letter(letter, space));
  }
  total -= 5;
}
void draw(){
  background(255);
  if(total < grid.getXSize()){
    total = grid.getXSize();
  }
  grid.display(letters, total);
  delay(50);
}
