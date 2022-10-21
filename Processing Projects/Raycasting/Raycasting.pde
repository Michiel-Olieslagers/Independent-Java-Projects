ArrayList boundaries = new ArrayList();
int createBoundaryX, createBoundaryY;
boolean showLine = false;
Particle particle;
void setup(){
  fullScreen();
  particle = new Particle();
  boundaries.add(new Boundary(0,0,width,0));
  boundaries.add(new Boundary(0,0,0,height));
  boundaries.add(new Boundary(0,height,width,height));
  boundaries.add(new Boundary(width,0,width,height));
}
void draw(){
  background(127);
  particle.show();
  if(showLine){
    line(createBoundaryX, createBoundaryY, mouseX,mouseY);
  }
  for(int i = 0; i < boundaries.size();i++){
    stroke(0);
    strokeWeight(2); 
    ((Boundary)boundaries.get(i)).show();
  }
    particle.look(boundaries);
  particle.update(mouseX,mouseY);
}
void mousePressed(){
  if(showLine){
    boundaries.add(new Boundary(createBoundaryX, createBoundaryY, mouseX,mouseY));
  }
  else{
  createBoundaryX = mouseX;
  createBoundaryY = mouseY;
  }
  showLine = !showLine;
}
