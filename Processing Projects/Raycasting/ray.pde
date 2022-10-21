class Ray{
  PVector position,direction;
  Ray(PVector position, float angle){
    this.position = position;
    direction = PVector.fromAngle(angle);
  }
  void lookAt(int x, int y){
    direction.x = x - position.x;
    direction.y = y - position.y;
    direction.normalize();
  }
  void show(){
    push();
    translate(position.x,position.y);
    line(0,0, direction.x,direction.y);
    pop();
  }
  PVector cast(Boundary wall){
    float x1 = wall.a.x;
    float y1 = wall.a.y;
    float x2 = wall.b.x;
    float y2 = wall.b.y;
    
    float x3 = position.x;
    float y3 = position.y;
    float x4 = position.x+direction.x;
    float y4 = position.y+direction.y;
    float denom = (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4);
    if(denom == 0){
      return null;
    }
    float t = ((x1 - x3) * (y3 - y4) - (y1 - y3) * (x3 - x4)) / denom;
    float u = -((x1 - x2) * (y1 - y3) - (y1 - y2) * (x1 - x3)) / denom;
    if(t > 0 && t < 1 && u > 0){
      float x = x1 + t * (x2 - x1);
      float y = y1 + t * (y2 - y1);
      PVector point = new PVector(x,y);
      return point;
    }
    else{
      return null;
    }
  }
}  
