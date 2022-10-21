class Particle{
  PVector position;
  ArrayList rays;
      PVector record;
  Particle(){
    position = new PVector(width/2,height/2);
    rays  = new ArrayList();
    for(int i = 0; i < 360; i+=3){
      rays.add(new Ray(position, radians(i)));
    }
  }
  void update(int x,int y){
    position.set(x,y);
  }
  void look(ArrayList walls){
    for(int i = 0; i < rays.size(); i++){
      float recordD = 10000000;
      record = null;
      for(int j = 0; j < walls.size(); j ++){
        PVector point = ((Ray)rays.get(i)).cast((Boundary)walls.get(j));
        if(point != null){
        float pointD = dist(position.x,position.y,point.x,point.y);
        if(pointD < recordD){
          recordD = pointD;
          record = point;
        }
        }
      }
      stroke(255);
      if(record != null){
        line(position.x,position.y,record.x,record.y);
      }
    }
  }
  void show(){
    stroke(0);
    for(int i = 0; i < rays.size(); i++){
      ((Ray)rays.get(i)).show();
    }
  }
  
}
