PImage img;
void setup() {
  img = loadImage("fresas.jpg");
  size(857, 857);
  fill(205);
}
void draw() {

  image(img, 0, 0);
  
  rect(mouseX+5, mouseY+5, 55, 55);
}
void mousePressed() {
  color c= get(mouseX, mouseY);
  fill(c);
}
