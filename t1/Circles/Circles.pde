int[] circles;
int lastDiameter;
boolean firstTime;
int spacing;

void setup(){
  size(600,600);
  spacing = 50;
  circles = new int[20];
  int foo = 0;
  while(foo <= circles.length - 1){
    circles[foo] = width + (foo * spacing);
    foo++;
  }
}

void draw(){
  background(255);
  stroke(0);
  strokeWeight(4);
  noFill();
  int arrayItemOn = 0;
  while(arrayItemOn <= circles.length - 1){
    int diameter = circles[arrayItemOn];
    if(diameter <= 0){
      circles[arrayItemOn] = lastDiameter + spacing;
      diameter = lastDiameter + spacing;
    }
    else{
      circles[arrayItemOn] -= 4;
    }
    ellipse(width/2,height/2,diameter,diameter);
    if(arrayItemOn == circles.length - 1){
      firstTime = false;
    }
    lastDiameter = diameter;
    arrayItemOn++;
  }
}
