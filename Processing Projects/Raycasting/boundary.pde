class Boundary{
  PVector a,b;
  Boundary(int aX,int aY,int bX,int bY){
    a = new PVector(aX,aY);
    b = new PVector(bX,bY);
  }
  void show(){
    line(a.x,a.y,b.x,b.y);
  }
}  
